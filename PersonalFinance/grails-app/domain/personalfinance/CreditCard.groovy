package personalfinance

class CreditCard {

    Integer cardLimit
    Date cardPay
    String cardCompany

    static belongsTo = [helth:Helth, sport:Sport, cableTV: accounts.CableTV]

    static constraints = {
    	helth nullable: true
    	sport nullable: true
    	cableTV nullable: true
    }
}
