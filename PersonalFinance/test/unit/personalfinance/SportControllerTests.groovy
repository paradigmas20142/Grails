package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(SportController)
@Mock(Sport)
class SportControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/sport/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.sportInstanceList.size() == 0
        assert model.sportInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.sportInstance != null
    }

    void testSave() {
        controller.save()

        assert model.sportInstance != null
        assert view == '/sport/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/sport/show/1'
        assert controller.flash.message != null
        assert Sport.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/sport/list'

        populateValidParams(params)
        def sport = new Sport(params)

        assert sport.save() != null

        params.id = sport.id

        def model = controller.show()

        assert model.sportInstance == sport
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/sport/list'

        populateValidParams(params)
        def sport = new Sport(params)

        assert sport.save() != null

        params.id = sport.id

        def model = controller.edit()

        assert model.sportInstance == sport
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/sport/list'

        response.reset()

        populateValidParams(params)
        def sport = new Sport(params)

        assert sport.save() != null

        // test invalid parameters in update
        params.id = sport.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/sport/edit"
        assert model.sportInstance != null

        sport.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/sport/show/$sport.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        sport.clearErrors()

        populateValidParams(params)
        params.id = sport.id
        params.version = -1
        controller.update()

        assert view == "/sport/edit"
        assert model.sportInstance != null
        assert model.sportInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/sport/list'

        response.reset()

        populateValidParams(params)
        def sport = new Sport(params)

        assert sport.save() != null
        assert Sport.count() == 1

        params.id = sport.id

        controller.delete()

        assert Sport.count() == 0
        assert Sport.get(sport.id) == null
        assert response.redirectedUrl == '/sport/list'
    }
}
