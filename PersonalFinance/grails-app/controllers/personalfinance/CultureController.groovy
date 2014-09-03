package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class CultureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [cultureInstanceList: Culture.list(params), cultureInstanceTotal: Culture.count()]
    }

    def create() {
        [cultureInstance: new Culture(params)]
    }

    def save() {
        def cultureInstance = new Culture(params)
        if (!cultureInstance.save(flush: true)) {
            render(view: "create", model: [cultureInstance: cultureInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'culture.label', default: 'Culture'), cultureInstance.id])
        redirect(action: "show", id: cultureInstance.id)
    }

    def show(Long id) {
        def cultureInstance = Culture.get(id)
        if (!cultureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "list")
            return
        }

        [cultureInstance: cultureInstance]
    }

    def edit(Long id) {
        def cultureInstance = Culture.get(id)
        if (!cultureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "list")
            return
        }

        [cultureInstance: cultureInstance]
    }

    def update(Long id, Long version) {
        def cultureInstance = Culture.get(id)
        if (!cultureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (cultureInstance.version > version) {
                cultureInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'culture.label', default: 'Culture')] as Object[],
                          "Another user has updated this Culture while you were editing")
                render(view: "edit", model: [cultureInstance: cultureInstance])
                return
            }
        }

        cultureInstance.properties = params

        if (!cultureInstance.save(flush: true)) {
            render(view: "edit", model: [cultureInstance: cultureInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'culture.label', default: 'Culture'), cultureInstance.id])
        redirect(action: "show", id: cultureInstance.id)
    }

    def delete(Long id) {
        def cultureInstance = Culture.get(id)
        if (!cultureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "list")
            return
        }

        try {
            cultureInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'culture.label', default: 'Culture'), id])
            redirect(action: "show", id: id)
        }
    }
}
