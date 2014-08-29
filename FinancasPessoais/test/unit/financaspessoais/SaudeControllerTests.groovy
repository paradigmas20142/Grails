package financaspessoais



import org.junit.*
import grails.test.mixin.*

@TestFor(SaudeController)
@Mock(Saude)
class SaudeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/saude/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.saudeInstanceList.size() == 0
        assert model.saudeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.saudeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.saudeInstance != null
        assert view == '/saude/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/saude/show/1'
        assert controller.flash.message != null
        assert Saude.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/saude/list'

        populateValidParams(params)
        def saude = new Saude(params)

        assert saude.save() != null

        params.id = saude.id

        def model = controller.show()

        assert model.saudeInstance == saude
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/saude/list'

        populateValidParams(params)
        def saude = new Saude(params)

        assert saude.save() != null

        params.id = saude.id

        def model = controller.edit()

        assert model.saudeInstance == saude
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/saude/list'

        response.reset()

        populateValidParams(params)
        def saude = new Saude(params)

        assert saude.save() != null

        // test invalid parameters in update
        params.id = saude.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/saude/edit"
        assert model.saudeInstance != null

        saude.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/saude/show/$saude.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        saude.clearErrors()

        populateValidParams(params)
        params.id = saude.id
        params.version = -1
        controller.update()

        assert view == "/saude/edit"
        assert model.saudeInstance != null
        assert model.saudeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/saude/list'

        response.reset()

        populateValidParams(params)
        def saude = new Saude(params)

        assert saude.save() != null
        assert Saude.count() == 1

        params.id = saude.id

        controller.delete()

        assert Saude.count() == 0
        assert Saude.get(saude.id) == null
        assert response.redirectedUrl == '/saude/list'
    }
}
