package personalfinance.accounts

import org.springframework.dao.DataIntegrityViolationException

class InternetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [internetInstanceList: Internet.list(params), internetInstanceTotal: Internet.count()]
    }

    def create() {
        [internetInstance: new Internet(params)]
    }

    def save() {
        def internetInstance = new Internet(params)
        if (!internetInstance.save(flush: true)) {
            render(view: "create", model: [internetInstance: internetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'internet.label', default: 'Internet'), internetInstance.id])
        redirect(action: "show", id: internetInstance.id)
    }

    def show(Long id) {
        def internetInstance = Internet.get(id)
        if (!internetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "list")
            return
        }

        [internetInstance: internetInstance]
    }

    def edit(Long id) {
        def internetInstance = Internet.get(id)
        if (!internetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "list")
            return
        }

        [internetInstance: internetInstance]
    }

    def update(Long id, Long version) {
        def internetInstance = Internet.get(id)
        if (!internetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (internetInstance.version > version) {
                internetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'internet.label', default: 'Internet')] as Object[],
                          "Another user has updated this Internet while you were editing")
                render(view: "edit", model: [internetInstance: internetInstance])
                return
            }
        }

        internetInstance.properties = params

        if (!internetInstance.save(flush: true)) {
            render(view: "edit", model: [internetInstance: internetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'internet.label', default: 'Internet'), internetInstance.id])
        redirect(action: "show", id: internetInstance.id)
    }

    def delete(Long id) {
        def internetInstance = Internet.get(id)
        if (!internetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "list")
            return
        }

        try {
            internetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'internet.label', default: 'Internet'), id])
            redirect(action: "show", id: id)
        }
    }
}
