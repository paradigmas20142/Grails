package personalfinance.accounts



import org.junit.*
import grails.test.mixin.*

@TestFor(LightController)
@Mock(Light)
class LightControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/light/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lightInstanceList.size() == 0
        assert model.lightInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.lightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lightInstance != null
        assert view == '/light/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/light/show/1'
        assert controller.flash.message != null
        assert Light.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/light/list'

        populateValidParams(params)
        def light = new Light(params)

        assert light.save() != null

        params.id = light.id

        def model = controller.show()

        assert model.lightInstance == light
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/light/list'

        populateValidParams(params)
        def light = new Light(params)

        assert light.save() != null

        params.id = light.id

        def model = controller.edit()

        assert model.lightInstance == light
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/light/list'

        response.reset()

        populateValidParams(params)
        def light = new Light(params)

        assert light.save() != null

        // test invalid parameters in update
        params.id = light.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/light/edit"
        assert model.lightInstance != null

        light.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/light/show/$light.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        light.clearErrors()

        populateValidParams(params)
        params.id = light.id
        params.version = -1
        controller.update()

        assert view == "/light/edit"
        assert model.lightInstance != null
        assert model.lightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/light/list'

        response.reset()

        populateValidParams(params)
        def light = new Light(params)

        assert light.save() != null
        assert Light.count() == 1

        params.id = light.id

        controller.delete()

        assert Light.count() == 0
        assert Light.get(light.id) == null
        assert response.redirectedUrl == '/light/list'
    }
}
