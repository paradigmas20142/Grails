package personalfinance

class CreditCard {

    Integer cardLimit
    Date cardPay
    String cardCompany

    static belongsTo = [helth:Helth, sport:Sport]

    static constraints = {
    	helth nullable: true
    	sport nullable: true
    }
}
