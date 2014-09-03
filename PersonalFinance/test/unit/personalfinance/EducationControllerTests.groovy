package personalfinance



import org.junit.*
import grails.test.mixin.*

@TestFor(EducationController)
@Mock(Education)
class EducationControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/education/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.educationInstanceList.size() == 0
        assert model.educationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.educationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.educationInstance != null
        assert view == '/education/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/education/show/1'
        assert controller.flash.message != null
        assert Education.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/education/list'

        populateValidParams(params)
        def education = new Education(params)

        assert education.save() != null

        params.id = education.id

        def model = controller.show()

        assert model.educationInstance == education
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/education/list'

        populateValidParams(params)
        def education = new Education(params)

        assert education.save() != null

        params.id = education.id

        def model = controller.edit()

        assert model.educationInstance == education
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/education/list'

        response.reset()

        populateValidParams(params)
        def education = new Education(params)

        assert education.save() != null

        // test invalid parameters in update
        params.id = education.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/education/edit"
        assert model.educationInstance != null

        education.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/education/show/$education.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        education.clearErrors()

        populateValidParams(params)
        params.id = education.id
        params.version = -1
        controller.update()

        assert view == "/education/edit"
        assert model.educationInstance != null
        assert model.educationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/education/list'

        response.reset()

        populateValidParams(params)
        def education = new Education(params)

        assert education.save() != null
        assert Education.count() == 1

        params.id = education.id

        controller.delete()

        assert Education.count() == 0
        assert Education.get(education.id) == null
        assert response.redirectedUrl == '/education/list'
    }
}
