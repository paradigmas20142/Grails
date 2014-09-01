package personalfinance

import org.springframework.dao.DataIntegrityViolationException

class ClothingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [clothingInstanceList: Clothing.list(params), clothingInstanceTotal: Clothing.count()]
    }

    def create() {
        [clothingInstance: new Clothing(params)]
    }

    def save() {
        def clothingInstance = new Clothing(params)
        if (!clothingInstance.save(flush: true)) {
            render(view: "create", model: [clothingInstance: clothingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'clothing.label', default: 'Clothing'), clothingInstance.id])
        redirect(action: "show", id: clothingInstance.id)
    }

    def show(Long id) {
        def clothingInstance = Clothing.get(id)
        if (!clothingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "list")
            return
        }

        [clothingInstance: clothingInstance]
    }

    def edit(Long id) {
        def clothingInstance = Clothing.get(id)
        if (!clothingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "list")
            return
        }

        [clothingInstance: clothingInstance]
    }

    def update(Long id, Long version) {
        def clothingInstance = Clothing.get(id)
        if (!clothingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (clothingInstance.version > version) {
                clothingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'clothing.label', default: 'Clothing')] as Object[],
                          "Another user has updated this Clothing while you were editing")
                render(view: "edit", model: [clothingInstance: clothingInstance])
                return
            }
        }

        clothingInstance.properties = params

        if (!clothingInstance.save(flush: true)) {
            render(view: "edit", model: [clothingInstance: clothingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'clothing.label', default: 'Clothing'), clothingInstance.id])
        redirect(action: "show", id: clothingInstance.id)
    }

    def delete(Long id) {
        def clothingInstance = Clothing.get(id)
        if (!clothingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "list")
            return
        }

        try {
            clothingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'clothing.label', default: 'Clothing'), id])
            redirect(action: "show", id: id)
        }
    }
}
