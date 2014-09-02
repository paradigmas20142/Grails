package personalfinance.accounts

class Light extends personalfinance.Accounts{

    static constraints = {
    	formPayment nullable: true
    	reasonExpense nullable: true
    }
}
