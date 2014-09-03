package personalfinance.accounts

import org.springframework.dao.DataIntegrityViolationException

class MobilePhoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [mobilePhoneInstanceList: MobilePhone.list(params), mobilePhoneInstanceTotal: MobilePhone.count()]
    }

    def create() {
        [mobilePhoneInstance: new MobilePhone(params)]
    }

    def save() {
        def mobilePhoneInstance = new MobilePhone(params)
        if (!mobilePhoneInstance.save(flush: true)) {
            render(view: "create", model: [mobilePhoneInstance: mobilePhoneInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), mobilePhoneInstance.id])
        redirect(action: "show", id: mobilePhoneInstance.id)
    }

    def show(Long id) {
        def mobilePhoneInstance = MobilePhone.get(id)
        if (!mobilePhoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "list")
            return
        }

        [mobilePhoneInstance: mobilePhoneInstance]
    }

    def edit(Long id) {
        def mobilePhoneInstance = MobilePhone.get(id)
        if (!mobilePhoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "list")
            return
        }

        [mobilePhoneInstance: mobilePhoneInstance]
    }

    def update(Long id, Long version) {
        def mobilePhoneInstance = MobilePhone.get(id)
        if (!mobilePhoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (mobilePhoneInstance.version > version) {
                mobilePhoneInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'mobilePhone.label', default: 'MobilePhone')] as Object[],
                          "Another user has updated this MobilePhone while you were editing")
                render(view: "edit", model: [mobilePhoneInstance: mobilePhoneInstance])
                return
            }
        }

        mobilePhoneInstance.properties = params

        if (!mobilePhoneInstance.save(flush: true)) {
            render(view: "edit", model: [mobilePhoneInstance: mobilePhoneInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), mobilePhoneInstance.id])
        redirect(action: "show", id: mobilePhoneInstance.id)
    }

    def delete(Long id) {
        def mobilePhoneInstance = MobilePhone.get(id)
        if (!mobilePhoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "list")
            return
        }

        try {
            mobilePhoneInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), id])
            redirect(action: "show", id: id)
        }
    }
}
