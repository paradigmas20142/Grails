package personalfinance.leisure

import org.springframework.dao.DataIntegrityViolationException

class TheaterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [theaterInstanceList: Theater.list(params), theaterInstanceTotal: Theater.count()]
    }

    def create() {
        [theaterInstance: new Theater(params)]
    }

    def calcInstanceSpent(params){
      def instanceSpent = 0
      params.each {key,value ->
      if (key.size() > 5 && key.substring(0,5) == "spent"){
        instanceSpent += value.toInteger()
        }
      }
      return instanceSpent
    }

    def save() {
        params["spentTotal"] = calcInstanceSpent(params)
        def theaterInstance = new Theater(params)
        if (!theaterInstance.save(flush: true)) {
            render(view: "create", model: [theaterInstance: theaterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'theater.label', default: 'Theater'), theaterInstance.id])
        redirect(action: "show", id: theaterInstance.id)
    }

    def show(Long id) {
        def theaterInstance = Theater.get(id)
        if (!theaterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "list")
            return
        }

        [theaterInstance: theaterInstance]
    }

    def edit(Long id) {
        def theaterInstance = Theater.get(id)
        if (!theaterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "list")
            return
        }

        [theaterInstance: theaterInstance]
    }

    def update(Long id, Long version) {
        def theaterInstance = Theater.get(id)
        if (!theaterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (theaterInstance.version > version) {
                theaterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'theater.label', default: 'Theater')] as Object[],
                          "Another user has updated this Theater while you were editing")
                render(view: "edit", model: [theaterInstance: theaterInstance])
                return
            }
        }

        theaterInstance.properties = params

        if (!theaterInstance.save(flush: true)) {
            render(view: "edit", model: [theaterInstance: theaterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'theater.label', default: 'Theater'), theaterInstance.id])
        redirect(action: "show", id: theaterInstance.id)
    }

    def delete(Long id) {
        def theaterInstance = Theater.get(id)
        if (!theaterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "list")
            return
        }

        try {
            theaterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'theater.label', default: 'Theater'), id])
            redirect(action: "show", id: id)
        }
    }
}
