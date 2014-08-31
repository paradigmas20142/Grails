package personalfinance

class CreditCard {

    Integer cardLimit
    Date cardPay
    String cardCompany

    static belongsTo = [helth:Helth]

    static constraints = {
    }
}
