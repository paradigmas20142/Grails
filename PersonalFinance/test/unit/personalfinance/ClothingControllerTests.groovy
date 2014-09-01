package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(ClothingController)
@Mock(Clothing)
class ClothingControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/clothing/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.clothingInstanceList.size() == 0
        assert model.clothingInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.clothingInstance != null
    }

    void testSave() {
        controller.save()

        assert model.clothingInstance != null
        assert view == '/clothing/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/clothing/show/1'
        assert controller.flash.message != null
        assert Clothing.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/clothing/list'

        populateValidParams(params)
        def clothing = new Clothing(params)

        assert clothing.save() != null

        params.id = clothing.id

        def model = controller.show()

        assert model.clothingInstance == clothing
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/clothing/list'

        populateValidParams(params)
        def clothing = new Clothing(params)

        assert clothing.save() != null

        params.id = clothing.id

        def model = controller.edit()

        assert model.clothingInstance == clothing
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/clothing/list'

        response.reset()

        populateValidParams(params)
        def clothing = new Clothing(params)

        assert clothing.save() != null

        // test invalid parameters in update
        params.id = clothing.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/clothing/edit"
        assert model.clothingInstance != null

        clothing.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/clothing/show/$clothing.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        clothing.clearErrors()

        populateValidParams(params)
        params.id = clothing.id
        params.version = -1
        controller.update()

        assert view == "/clothing/edit"
        assert model.clothingInstance != null
        assert model.clothingInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/clothing/list'

        response.reset()

        populateValidParams(params)
        def clothing = new Clothing(params)

        assert clothing.save() != null
        assert Clothing.count() == 1

        params.id = clothing.id

        controller.delete()

        assert Clothing.count() == 0
        assert Clothing.get(clothing.id) == null
        assert response.redirectedUrl == '/clothing/list'
    }
}
