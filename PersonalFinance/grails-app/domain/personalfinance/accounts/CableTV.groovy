package personalfinance.accounts

class CableTV extends personalfinance.Accounts{

	personalfinance.CreditCard creditcard

    static constraints = {
    	creditcard nullable: true
    }

    static mapping = {
    	table "cableTV"
    }
}
