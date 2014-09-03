package personalfinance.accounts

import org.springframework.dao.DataIntegrityViolationException

class CableTVController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [cableTVInstanceList: CableTV.list(params), cableTVInstanceTotal: CableTV.count()]
    }

    def create() {
        [cableTVInstance: new CableTV(params)]
    }

    def save() {
        def cableTVInstance = new CableTV(params)
        if (!cableTVInstance.save(flush: true)) {
            render(view: "create", model: [cableTVInstance: cableTVInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cableTV.label', default: 'CableTV'), cableTVInstance.id])
        redirect(action: "show", id: cableTVInstance.id)
    }

    def show(Long id) {
        def cableTVInstance = CableTV.get(id)
        if (!cableTVInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "list")
            return
        }

        [cableTVInstance: cableTVInstance]
    }

    def edit(Long id) {
        def cableTVInstance = CableTV.get(id)
        if (!cableTVInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "list")
            return
        }

        [cableTVInstance: cableTVInstance]
    }

    def update(Long id, Long version) {
        def cableTVInstance = CableTV.get(id)
        if (!cableTVInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (cableTVInstance.version > version) {
                cableTVInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cableTV.label', default: 'CableTV')] as Object[],
                          "Another user has updated this CableTV while you were editing")
                render(view: "edit", model: [cableTVInstance: cableTVInstance])
                return
            }
        }

        cableTVInstance.properties = params

        if (!cableTVInstance.save(flush: true)) {
            render(view: "edit", model: [cableTVInstance: cableTVInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cableTV.label', default: 'CableTV'), cableTVInstance.id])
        redirect(action: "show", id: cableTVInstance.id)
    }

    def delete(Long id) {
        def cableTVInstance = CableTV.get(id)
        if (!cableTVInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "list")
            return
        }

        try {
            cableTVInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cableTV.label', default: 'CableTV'), id])
            redirect(action: "show", id: id)
        }
    }
}
