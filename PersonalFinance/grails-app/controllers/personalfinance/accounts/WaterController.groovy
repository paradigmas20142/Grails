package personalfinance.accounts

import org.springframework.dao.DataIntegrityViolationException

class WaterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [waterInstanceList: Water.list(params), waterInstanceTotal: Water.count()]
    }

    def create() {
        [waterInstance: new Water(params)]
    }

    def save() {
        def waterInstance = new Water(params)
        if (!waterInstance.save(flush: true)) {
            render(view: "create", model: [waterInstance: waterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'water.label', default: 'Water'), waterInstance.id])
        redirect(action: "show", id: waterInstance.id)
    }

    def show(Long id) {
        def waterInstance = Water.get(id)
        if (!waterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "list")
            return
        }

        [waterInstance: waterInstance]
    }

    def edit(Long id) {
        def waterInstance = Water.get(id)
        if (!waterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "list")
            return
        }

        [waterInstance: waterInstance]
    }

    def update(Long id, Long version) {
        def waterInstance = Water.get(id)
        if (!waterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (waterInstance.version > version) {
                waterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'water.label', default: 'Water')] as Object[],
                          "Another user has updated this Water while you were editing")
                render(view: "edit", model: [waterInstance: waterInstance])
                return
            }
        }

        waterInstance.properties = params

        if (!waterInstance.save(flush: true)) {
            render(view: "edit", model: [waterInstance: waterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'water.label', default: 'Water'), waterInstance.id])
        redirect(action: "show", id: waterInstance.id)
    }

    def delete(Long id) {
        def waterInstance = Water.get(id)
        if (!waterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "list")
            return
        }

        try {
            waterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'water.label', default: 'Water'), id])
            redirect(action: "show", id: id)
        }
    }
}
