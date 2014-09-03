package personalfinance.accounts



import org.junit.*
import grails.test.mixin.*

@TestFor(CableTVController)
@Mock(CableTV)
class CableTVControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cableTV/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cableTVInstanceList.size() == 0
        assert model.cableTVInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cableTVInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cableTVInstance != null
        assert view == '/cableTV/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cableTV/show/1'
        assert controller.flash.message != null
        assert CableTV.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cableTV/list'

        populateValidParams(params)
        def cableTV = new CableTV(params)

        assert cableTV.save() != null

        params.id = cableTV.id

        def model = controller.show()

        assert model.cableTVInstance == cableTV
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cableTV/list'

        populateValidParams(params)
        def cableTV = new CableTV(params)

        assert cableTV.save() != null

        params.id = cableTV.id

        def model = controller.edit()

        assert model.cableTVInstance == cableTV
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cableTV/list'

        response.reset()

        populateValidParams(params)
        def cableTV = new CableTV(params)

        assert cableTV.save() != null

        // test invalid parameters in update
        params.id = cableTV.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cableTV/edit"
        assert model.cableTVInstance != null

        cableTV.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cableTV/show/$cableTV.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cableTV.clearErrors()

        populateValidParams(params)
        params.id = cableTV.id
        params.version = -1
        controller.update()

        assert view == "/cableTV/edit"
        assert model.cableTVInstance != null
        assert model.cableTVInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cableTV/list'

        response.reset()

        populateValidParams(params)
        def cableTV = new CableTV(params)

        assert cableTV.save() != null
        assert CableTV.count() == 1

        params.id = cableTV.id

        controller.delete()

        assert CableTV.count() == 0
        assert CableTV.get(cableTV.id) == null
        assert response.redirectedUrl == '/cableTV/list'
    }
}
