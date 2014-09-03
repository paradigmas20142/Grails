import personalfinance.user.*

class BootStrap {

    def init = { servletContext ->
    	if(!Person.count()){
    		createData()
    	}
    }
    def destroy = {
    }

    private void createData(){
    	def userRole = new Authority(authority: 'ROLE_USER').save()

    	String password = 'password'

    	[carol: 'Carolina Ramalho'].each {userName, name ->
    		def user = new Person(userName: userName, name:name, password:password, enable: true).save()
    		PersonAuthority.create user, userRole, true
    	}
    }
}
