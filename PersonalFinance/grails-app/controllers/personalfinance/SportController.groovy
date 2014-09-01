package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class SportController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sportInstanceList: Sport.list(params), sportInstanceTotal: Sport.count()]
    }

    def create() {
        [sportInstance: new Sport(params)]
    }

    def save() {
        def sportInstance = new Sport(params)
        if (!sportInstance.save(flush: true)) {
            render(view: "create", model: [sportInstance: sportInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sport.label', default: 'Sport'), sportInstance.id])
        redirect(action: "show", id: sportInstance.id)
    }

    def show(Long id) {
        def sportInstance = Sport.get(id)
        if (!sportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "list")
            return
        }

        [sportInstance: sportInstance]
    }

    def edit(Long id) {
        def sportInstance = Sport.get(id)
        if (!sportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "list")
            return
        }

        [sportInstance: sportInstance]
    }

    def update(Long id, Long version) {
        def sportInstance = Sport.get(id)
        if (!sportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sportInstance.version > version) {
                sportInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sport.label', default: 'Sport')] as Object[],
                          "Another user has updated this Sport while you were editing")
                render(view: "edit", model: [sportInstance: sportInstance])
                return
            }
        }

        sportInstance.properties = params

        if (!sportInstance.save(flush: true)) {
            render(view: "edit", model: [sportInstance: sportInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sport.label', default: 'Sport'), sportInstance.id])
        redirect(action: "show", id: sportInstance.id)
    }

    def delete(Long id) {
        def sportInstance = Sport.get(id)
        if (!sportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "list")
            return
        }

        try {
            sportInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sport.label', default: 'Sport'), id])
            redirect(action: "show", id: id)
        }
    }
}
