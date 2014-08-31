package personalfinance

class Person {

	String name
	int number
	String adress
	String financeSit
	int salary

	static hasOne = [user: User]

	float calcAnnualSalary (){}
	
    static constraints = {
    	user unique: true
    	user nullable: true
    }
}
