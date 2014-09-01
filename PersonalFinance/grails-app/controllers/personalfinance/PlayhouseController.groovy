package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class PlayhouseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [playhouseInstanceList: Playhouse.list(params), playhouseInstanceTotal: Playhouse.count()]
    }

    def create() {
        [playhouseInstance: new Playhouse(params)]
    }

    def save() {
        def playhouseInstance = new Playhouse(params)
        if (!playhouseInstance.save(flush: true)) {
            render(view: "create", model: [playhouseInstance: playhouseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), playhouseInstance.id])
        redirect(action: "show", id: playhouseInstance.id)
    }

    def show(Long id) {
        def playhouseInstance = Playhouse.get(id)
        if (!playhouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "list")
            return
        }

        [playhouseInstance: playhouseInstance]
    }

    def edit(Long id) {
        def playhouseInstance = Playhouse.get(id)
        if (!playhouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "list")
            return
        }

        [playhouseInstance: playhouseInstance]
    }

    def update(Long id, Long version) {
        def playhouseInstance = Playhouse.get(id)
        if (!playhouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (playhouseInstance.version > version) {
                playhouseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'playhouse.label', default: 'Playhouse')] as Object[],
                          "Another user has updated this Playhouse while you were editing")
                render(view: "edit", model: [playhouseInstance: playhouseInstance])
                return
            }
        }

        playhouseInstance.properties = params

        if (!playhouseInstance.save(flush: true)) {
            render(view: "edit", model: [playhouseInstance: playhouseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), playhouseInstance.id])
        redirect(action: "show", id: playhouseInstance.id)
    }

    def delete(Long id) {
        def playhouseInstance = Playhouse.get(id)
        if (!playhouseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "list")
            return
        }

        try {
            playhouseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'playhouse.label', default: 'Playhouse'), id])
            redirect(action: "show", id: id)
        }
    }
}
