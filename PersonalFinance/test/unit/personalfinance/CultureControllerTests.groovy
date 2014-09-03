package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(CultureController)
@Mock(Culture)
class CultureControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/culture/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cultureInstanceList.size() == 0
        assert model.cultureInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cultureInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cultureInstance != null
        assert view == '/culture/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/culture/show/1'
        assert controller.flash.message != null
        assert Culture.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/culture/list'

        populateValidParams(params)
        def culture = new Culture(params)

        assert culture.save() != null

        params.id = culture.id

        def model = controller.show()

        assert model.cultureInstance == culture
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/culture/list'

        populateValidParams(params)
        def culture = new Culture(params)

        assert culture.save() != null

        params.id = culture.id

        def model = controller.edit()

        assert model.cultureInstance == culture
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/culture/list'

        response.reset()

        populateValidParams(params)
        def culture = new Culture(params)

        assert culture.save() != null

        // test invalid parameters in update
        params.id = culture.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/culture/edit"
        assert model.cultureInstance != null

        culture.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/culture/show/$culture.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        culture.clearErrors()

        populateValidParams(params)
        params.id = culture.id
        params.version = -1
        controller.update()

        assert view == "/culture/edit"
        assert model.cultureInstance != null
        assert model.cultureInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/culture/list'

        response.reset()

        populateValidParams(params)
        def culture = new Culture(params)

        assert culture.save() != null
        assert Culture.count() == 1

        params.id = culture.id

        controller.delete()

        assert Culture.count() == 0
        assert Culture.get(culture.id) == null
        assert response.redirectedUrl == '/culture/list'
    }
}
