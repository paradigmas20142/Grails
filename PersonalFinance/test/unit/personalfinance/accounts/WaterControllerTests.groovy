package personalfinance.accounts



import org.junit.*
import grails.test.mixin.*

@TestFor(WaterController)
@Mock(Water)
class WaterControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/water/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.waterInstanceList.size() == 0
        assert model.waterInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.waterInstance != null
    }

    void testSave() {
        controller.save()

        assert model.waterInstance != null
        assert view == '/water/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/water/show/1'
        assert controller.flash.message != null
        assert Water.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/water/list'

        populateValidParams(params)
        def water = new Water(params)

        assert water.save() != null

        params.id = water.id

        def model = controller.show()

        assert model.waterInstance == water
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/water/list'

        populateValidParams(params)
        def water = new Water(params)

        assert water.save() != null

        params.id = water.id

        def model = controller.edit()

        assert model.waterInstance == water
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/water/list'

        response.reset()

        populateValidParams(params)
        def water = new Water(params)

        assert water.save() != null

        // test invalid parameters in update
        params.id = water.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/water/edit"
        assert model.waterInstance != null

        water.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/water/show/$water.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        water.clearErrors()

        populateValidParams(params)
        params.id = water.id
        params.version = -1
        controller.update()

        assert view == "/water/edit"
        assert model.waterInstance != null
        assert model.waterInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/water/list'

        response.reset()

        populateValidParams(params)
        def water = new Water(params)

        assert water.save() != null
        assert Water.count() == 1

        params.id = water.id

        controller.delete()

        assert Water.count() == 0
        assert Water.get(water.id) == null
        assert response.redirectedUrl == '/water/list'
    }
}
