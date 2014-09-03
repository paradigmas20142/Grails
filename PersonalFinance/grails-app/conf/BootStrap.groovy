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

    	[carol: 'Carolina Ramalho'].each {userName, realName ->
    		def user = new Person(userName: userName, realName:realName, password: password, enable: true).save()
    		PersonAuthority.create user, userRole, true
    	}
    }
}
