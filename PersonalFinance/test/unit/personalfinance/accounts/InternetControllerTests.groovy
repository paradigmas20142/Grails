package personalfinance.accounts



import org.junit.*
import grails.test.mixin.*

@TestFor(InternetController)
@Mock(Internet)
class InternetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/internet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.internetInstanceList.size() == 0
        assert model.internetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.internetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.internetInstance != null
        assert view == '/internet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/internet/show/1'
        assert controller.flash.message != null
        assert Internet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/internet/list'

        populateValidParams(params)
        def internet = new Internet(params)

        assert internet.save() != null

        params.id = internet.id

        def model = controller.show()

        assert model.internetInstance == internet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/internet/list'

        populateValidParams(params)
        def internet = new Internet(params)

        assert internet.save() != null

        params.id = internet.id

        def model = controller.edit()

        assert model.internetInstance == internet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/internet/list'

        response.reset()

        populateValidParams(params)
        def internet = new Internet(params)

        assert internet.save() != null

        // test invalid parameters in update
        params.id = internet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/internet/edit"
        assert model.internetInstance != null

        internet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/internet/show/$internet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        internet.clearErrors()

        populateValidParams(params)
        params.id = internet.id
        params.version = -1
        controller.update()

        assert view == "/internet/edit"
        assert model.internetInstance != null
        assert model.internetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/internet/list'

        response.reset()

        populateValidParams(params)
        def internet = new Internet(params)

        assert internet.save() != null
        assert Internet.count() == 1

        params.id = internet.id

        controller.delete()

        assert Internet.count() == 0
        assert Internet.get(internet.id) == null
        assert response.redirectedUrl == '/internet/list'
    }
}
