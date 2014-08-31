package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(CreditCardController)
@Mock(CreditCard)
class CreditCardControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/creditCard/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.creditCardInstanceList.size() == 0
        assert model.creditCardInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.creditCardInstance != null
    }

    void testSave() {
        controller.save()

        assert model.creditCardInstance != null
        assert view == '/creditCard/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/creditCard/show/1'
        assert controller.flash.message != null
        assert CreditCard.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/creditCard/list'

        populateValidParams(params)
        def creditCard = new CreditCard(params)

        assert creditCard.save() != null

        params.id = creditCard.id

        def model = controller.show()

        assert model.creditCardInstance == creditCard
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/creditCard/list'

        populateValidParams(params)
        def creditCard = new CreditCard(params)

        assert creditCard.save() != null

        params.id = creditCard.id

        def model = controller.edit()

        assert model.creditCardInstance == creditCard
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/creditCard/list'

        response.reset()

        populateValidParams(params)
        def creditCard = new CreditCard(params)

        assert creditCard.save() != null

        // test invalid parameters in update
        params.id = creditCard.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/creditCard/edit"
        assert model.creditCardInstance != null

        creditCard.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/creditCard/show/$creditCard.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        creditCard.clearErrors()

        populateValidParams(params)
        params.id = creditCard.id
        params.version = -1
        controller.update()

        assert view == "/creditCard/edit"
        assert model.creditCardInstance != null
        assert model.creditCardInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/creditCard/list'

        response.reset()

        populateValidParams(params)
        def creditCard = new CreditCard(params)

        assert creditCard.save() != null
        assert CreditCard.count() == 1

        params.id = creditCard.id

        controller.delete()

        assert CreditCard.count() == 0
        assert CreditCard.get(creditCard.id) == null
        assert response.redirectedUrl == '/creditCard/list'
    }
}
