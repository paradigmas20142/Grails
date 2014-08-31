package personalfinance

class Helth extends Category {

    String hospitalType
    Integer spentOnMedicine
    Integer spentOnConsult
    CreditCard creditCard



    static constraints = {
      creditCard nullable: true
      spentOnMedicine nullable: true
      spentOnMedicine nullable: true
    }

    static mapping = {
      table "helth"
    }
}

