package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(PlayhouseController)
@Mock(Playhouse)
class PlayhouseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/playhouse/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.playhouseInstanceList.size() == 0
        assert model.playhouseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.playhouseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.playhouseInstance != null
        assert view == '/playhouse/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/playhouse/show/1'
        assert controller.flash.message != null
        assert Playhouse.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/playhouse/list'

        populateValidParams(params)
        def playhouse = new Playhouse(params)

        assert playhouse.save() != null

        params.id = playhouse.id

        def model = controller.show()

        assert model.playhouseInstance == playhouse
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/playhouse/list'

        populateValidParams(params)
        def playhouse = new Playhouse(params)

        assert playhouse.save() != null

        params.id = playhouse.id

        def model = controller.edit()

        assert model.playhouseInstance == playhouse
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/playhouse/list'

        response.reset()

        populateValidParams(params)
        def playhouse = new Playhouse(params)

        assert playhouse.save() != null

        // test invalid parameters in update
        params.id = playhouse.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/playhouse/edit"
        assert model.playhouseInstance != null

        playhouse.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/playhouse/show/$playhouse.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        playhouse.clearErrors()

        populateValidParams(params)
        params.id = playhouse.id
        params.version = -1
        controller.update()

        assert view == "/playhouse/edit"
        assert model.playhouseInstance != null
        assert model.playhouseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/playhouse/list'

        response.reset()

        populateValidParams(params)
        def playhouse = new Playhouse(params)

        assert playhouse.save() != null
        assert Playhouse.count() == 1

        params.id = playhouse.id

        controller.delete()

        assert Playhouse.count() == 0
        assert Playhouse.get(playhouse.id) == null
        assert response.redirectedUrl == '/playhouse/list'
    }
}
