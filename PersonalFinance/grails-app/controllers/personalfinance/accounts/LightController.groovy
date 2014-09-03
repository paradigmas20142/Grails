package personalfinance.accounts

import org.springframework.dao.DataIntegrityViolationException

class LightController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lightInstanceList: Light.list(params), lightInstanceTotal: Light.count()]
    }

    def create() {
        [lightInstance: new Light(params)]
    }

    def save() {
        def lightInstance = new Light(params)
        if (!lightInstance.save(flush: true)) {
            render(view: "create", model: [lightInstance: lightInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'light.label', default: 'Light'), lightInstance.id])
        redirect(action: "show", id: lightInstance.id)
    }

    def show(Long id) {
        def lightInstance = Light.get(id)
        if (!lightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "list")
            return
        }

        [lightInstance: lightInstance]
    }

    def edit(Long id) {
        def lightInstance = Light.get(id)
        if (!lightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "list")
            return
        }

        [lightInstance: lightInstance]
    }

    def update(Long id, Long version) {
        def lightInstance = Light.get(id)
        if (!lightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lightInstance.version > version) {
                lightInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'light.label', default: 'Light')] as Object[],
                          "Another user has updated this Light while you were editing")
                render(view: "edit", model: [lightInstance: lightInstance])
                return
            }
        }

        lightInstance.properties = params

        if (!lightInstance.save(flush: true)) {
            render(view: "edit", model: [lightInstance: lightInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'light.label', default: 'Light'), lightInstance.id])
        redirect(action: "show", id: lightInstance.id)
    }

    def delete(Long id) {
        def lightInstance = Light.get(id)
        if (!lightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "list")
            return
        }

        try {
            lightInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'light.label', default: 'Light'), id])
            redirect(action: "show", id: id)
        }
    }
}
