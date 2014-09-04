package personalfinance.accounts



import org.junit.*
import grails.test.mixin.*

/**
 * MobilePhoneControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(MobilePhoneController)
@Mock(MobilePhone)
class MobilePhoneControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/mobilePhone/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mobilePhoneInstanceList.size() == 0
        assert model.mobilePhoneInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.mobilePhoneInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mobilePhoneInstance != null
        assert view == '/mobilePhone/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/mobilePhone/show/1'
        assert controller.flash.message != null
        assert MobilePhone.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/mobilePhone/list'


        populateValidParams(params)
        def mobilePhone = new MobilePhone(params)

        assert mobilePhone.save() != null

        params.id = mobilePhone.id

        def model = controller.show()

        assert model.mobilePhoneInstance == mobilePhone
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/mobilePhone/list'


        populateValidParams(params)
        def mobilePhone = new MobilePhone(params)

        assert mobilePhone.save() != null

        params.id = mobilePhone.id

        def model = controller.edit()

        assert model.mobilePhoneInstance == mobilePhone
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/mobilePhone/list'

        response.reset()


        populateValidParams(params)
        def mobilePhone = new MobilePhone(params)

        assert mobilePhone.save() != null

        // test invalid parameters in update
        params.id = mobilePhone.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/mobilePhone/edit"
        assert model.mobilePhoneInstance != null

        mobilePhone.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/mobilePhone/show/$mobilePhone.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        mobilePhone.clearErrors()

        populateValidParams(params)
        params.id = mobilePhone.id
        params.version = -1
        controller.update()

        assert view == "/mobilePhone/edit"
        assert model.mobilePhoneInstance != null
        assert model.mobilePhoneInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/mobilePhone/list'

        response.reset()

        populateValidParams(params)
        def mobilePhone = new MobilePhone(params)

        assert mobilePhone.save() != null
        assert MobilePhone.count() == 1

        params.id = mobilePhone.id

        controller.delete()

        assert MobilePhone.count() == 0
        assert MobilePhone.get(mobilePhone.id) == null
        assert response.redirectedUrl == '/mobilePhone/list'
    }
}
