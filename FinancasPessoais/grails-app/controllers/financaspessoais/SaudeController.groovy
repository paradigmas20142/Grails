package financaspessoais

import org.springframework.dao.DataIntegrityViolationException

class SaudeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [saudeInstanceList: Saude.list(params), saudeInstanceTotal: Saude.count()]
    }

    def create() {
        [saudeInstance: new Saude(params)]
    }

    def save() {
        def saudeInstance = new Saude(params)
        if (!saudeInstance.save(flush: true)) {
            render(view: "create", model: [saudeInstance: saudeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'saude.label', default: 'Saude'), saudeInstance.id])
        redirect(action: "show", id: saudeInstance.id)
    }

    def show(Long id) {
        def saudeInstance = Saude.get(id)
        if (!saudeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "list")
            return
        }

        [saudeInstance: saudeInstance]
    }

    def edit(Long id) {
        def saudeInstance = Saude.get(id)
        if (!saudeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "list")
            return
        }

        [saudeInstance: saudeInstance]
    }

    def update(Long id, Long version) {
        def saudeInstance = Saude.get(id)
        if (!saudeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (saudeInstance.version > version) {
                saudeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'saude.label', default: 'Saude')] as Object[],
                          "Another user has updated this Saude while you were editing")
                render(view: "edit", model: [saudeInstance: saudeInstance])
                return
            }
        }

        saudeInstance.properties = params

        if (!saudeInstance.save(flush: true)) {
            render(view: "edit", model: [saudeInstance: saudeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'saude.label', default: 'Saude'), saudeInstance.id])
        redirect(action: "show", id: saudeInstance.id)
    }

    def delete(Long id) {
        def saudeInstance = Saude.get(id)
        if (!saudeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "list")
            return
        }

        try {
            saudeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'saude.label', default: 'Saude'), id])
            redirect(action: "show", id: id)
        }
    }
}
