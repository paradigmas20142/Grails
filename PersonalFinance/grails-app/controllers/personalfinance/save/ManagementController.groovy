package personalfinance.save
import  personalfinance.*
import personalfinance.leisure.*
import org.springframework.dao.DataIntegrityViolationException

class ManagementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def totalSpents(){

      def spent_list = {}
      spent_list =[ spentHelth:Helth.calcSpentTotal(),
      spentEducation:Education.calcSpentTotal(),
      spentMovie:Movie.calcSpentTotal()
      ]

      return spent_list

    }

    def list(Integer max) {
        def spent_list
        spent_list = totalSpents()
        print "=========="
        print spent_list
        params.max = Math.min(max ?: 10, 100)
        [managementInstanceList: Management.list(params), managementInstanceTotal: Management.count(),spent_list:spent_list]
    }

    def create() {
        [managementInstance: new Management(params)]
    }

    def save() {
        def managementInstance = new Management(params)
        if (!managementInstance.save(flush: true)) {
            render(view: "create", model: [managementInstance: managementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'management.label', default: 'Management'), managementInstance.id])
        redirect(action: "show", id: managementInstance.id)
    }

    def show(Long id) {
        def managementInstance = Management.get(id)
        if (!managementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "list")
            return
        }

        [managementInstance: managementInstance]
    }

    def edit(Long id) {
        def managementInstance = Management.get(id)
        if (!managementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "list")
            return
        }

        [managementInstance: managementInstance]
    }

    def update(Long id, Long version) {
        def managementInstance = Management.get(id)
        if (!managementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (managementInstance.version > version) {
                managementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'management.label', default: 'Management')] as Object[],
                          "Another user has updated this Management while you were editing")
                render(view: "edit", model: [managementInstance: managementInstance])
                return
            }
        }

        managementInstance.properties = params

        if (!managementInstance.save(flush: true)) {
            render(view: "edit", model: [managementInstance: managementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'management.label', default: 'Management'), managementInstance.id])
        redirect(action: "show", id: managementInstance.id)
    }

    def delete(Long id) {
        def managementInstance = Management.get(id)
        if (!managementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "list")
            return
        }

        try {
            managementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'management.label', default: 'Management'), id])
            redirect(action: "show", id: id)
        }
    }
}
