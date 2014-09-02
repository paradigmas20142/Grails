package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class HelthController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [helthInstanceList: Helth.list(params), helthInstanceTotal: Helth.count()]
    }

    def create() {
        [helthInstance: new Helth(params)]
    }

    def calcInstanceSpent(params){
      def instanceSpent = 0
      params.each {key,value ->
      if (key.substring(0,5) == "spent"){
        instanceSpent += value.toInteger()
        }
      }
      return instanceSpent
    }

    def save() {
        params["spentTotal"] = calcInstanceSpent(params)
        def helthInstance = new Helth(params)
        if (!helthInstance.save(flush: true)) {
            render(view: "create", model: [helthInstance: helthInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'helth.label', default: 'Helth'), helthInstance.id])
        redirect(action: "show", id: helthInstance.id)
    }

    def show(Long id) {
        def helthInstance = Helth.get(id)
        if (!helthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "list")
            return
        }

        [helthInstance: helthInstance]
    }

    def edit(Long id) {
        def helthInstance = Helth.get(id)
        if (!helthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "list")
            return
        }

        [helthInstance: helthInstance]
    }

    def update(Long id, Long version) {
        def helthInstance = Helth.get(id)
        if (!helthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (helthInstance.version > version) {
                helthInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'helth.label', default: 'Helth')] as Object[],
                          "Another user has updated this Helth while you were editing")
                render(view: "edit", model: [helthInstance: helthInstance])
                return
            }
        }

        helthInstance.properties = params

        if (!helthInstance.save(flush: true)) {
            render(view: "edit", model: [helthInstance: helthInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'helth.label', default: 'Helth'), helthInstance.id])
        redirect(action: "show", id: helthInstance.id)
    }

    def delete(Long id) {
        def helthInstance = Helth.get(id)
        if (!helthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "list")
            return
        }

        try {
            helthInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'helth.label', default: 'Helth'), id])
            redirect(action: "show", id: id)
        }
    }
}
