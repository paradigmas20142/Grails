package personalfinance

class Sport extends Leisure{

	CreditCard creditcard

    static constraints = {
    	creditcard nullable: true
    }

    static mapping = {
      table "sport"
    }
}
