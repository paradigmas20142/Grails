package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class CreditCardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [creditCardInstanceList: CreditCard.list(params), creditCardInstanceTotal: CreditCard.count()]
    }

    def create() {
        [creditCardInstance: new CreditCard(params)]
    }

    def save() {
        def creditCardInstance = new CreditCard(params)
        if (!creditCardInstance.save(flush: true)) {
            render(view: "create", model: [creditCardInstance: creditCardInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), creditCardInstance.id])
        redirect(action: "show", id: creditCardInstance.id)
    }

    def show(Long id) {
        def creditCardInstance = CreditCard.get(id)
        if (!creditCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "list")
            return
        }

        [creditCardInstance: creditCardInstance]
    }

    def edit(Long id) {
        def creditCardInstance = CreditCard.get(id)
        if (!creditCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "list")
            return
        }

        [creditCardInstance: creditCardInstance]
    }

    def update(Long id, Long version) {
        def creditCardInstance = CreditCard.get(id)
        if (!creditCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (creditCardInstance.version > version) {
                creditCardInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'creditCard.label', default: 'CreditCard')] as Object[],
                          "Another user has updated this CreditCard while you were editing")
                render(view: "edit", model: [creditCardInstance: creditCardInstance])
                return
            }
        }

        creditCardInstance.properties = params

        if (!creditCardInstance.save(flush: true)) {
            render(view: "edit", model: [creditCardInstance: creditCardInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), creditCardInstance.id])
        redirect(action: "show", id: creditCardInstance.id)
    }

    def delete(Long id) {
        def creditCardInstance = CreditCard.get(id)
        if (!creditCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "list")
            return
        }

        try {
            creditCardInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'creditCard.label', default: 'CreditCard'), id])
            redirect(action: "show", id: id)
        }
    }
}
