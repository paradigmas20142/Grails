package personalfinance.save



import org.junit.*
import grails.test.mixin.*

@TestFor(ManagementController)
@Mock(Management)
class ManagementControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/management/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.managementInstanceList.size() == 0
        assert model.managementInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.managementInstance != null
    }

    void testSave() {
        controller.save()

        assert model.managementInstance != null
        assert view == '/management/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/management/show/1'
        assert controller.flash.message != null
        assert Management.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/management/list'

        populateValidParams(params)
        def management = new Management(params)

        assert management.save() != null

        params.id = management.id

        def model = controller.show()

        assert model.managementInstance == management
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/management/list'

        populateValidParams(params)
        def management = new Management(params)

        assert management.save() != null

        params.id = management.id

        def model = controller.edit()

        assert model.managementInstance == management
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/management/list'

        response.reset()

        populateValidParams(params)
        def management = new Management(params)

        assert management.save() != null

        // test invalid parameters in update
        params.id = management.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/management/edit"
        assert model.managementInstance != null

        management.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/management/show/$management.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        management.clearErrors()

        populateValidParams(params)
        params.id = management.id
        params.version = -1
        controller.update()

        assert view == "/management/edit"
        assert model.managementInstance != null
        assert model.managementInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/management/list'

        response.reset()

        populateValidParams(params)
        def management = new Management(params)

        assert management.save() != null
        assert Management.count() == 1

        params.id = management.id

        controller.delete()

        assert Management.count() == 0
        assert Management.get(management.id) == null
        assert response.redirectedUrl == '/management/list'
    }
}
