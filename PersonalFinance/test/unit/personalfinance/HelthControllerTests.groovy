package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(HelthController)
@Mock(Helth)
class HelthControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/helth/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.helthInstanceList.size() == 0
        assert model.helthInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.helthInstance != null
    }

    void testSave() {
        controller.save()

        assert model.helthInstance != null
        assert view == '/helth/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/helth/show/1'
        assert controller.flash.message != null
        assert Helth.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/helth/list'

        populateValidParams(params)
        def helth = new Helth(params)

        assert helth.save() != null

        params.id = helth.id

        def model = controller.show()

        assert model.helthInstance == helth
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/helth/list'

        populateValidParams(params)
        def helth = new Helth(params)

        assert helth.save() != null

        params.id = helth.id

        def model = controller.edit()

        assert model.helthInstance == helth
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/helth/list'

        response.reset()

        populateValidParams(params)
        def helth = new Helth(params)

        assert helth.save() != null

        // test invalid parameters in update
        params.id = helth.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/helth/edit"
        assert model.helthInstance != null

        helth.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/helth/show/$helth.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        helth.clearErrors()

        populateValidParams(params)
        params.id = helth.id
        params.version = -1
        controller.update()

        assert view == "/helth/edit"
        assert model.helthInstance != null
        assert model.helthInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/helth/list'

        response.reset()

        populateValidParams(params)
        def helth = new Helth(params)

        assert helth.save() != null
        assert Helth.count() == 1

        params.id = helth.id

        controller.delete()

        assert Helth.count() == 0
        assert Helth.get(helth.id) == null
        assert response.redirectedUrl == '/helth/list'
    }
}
