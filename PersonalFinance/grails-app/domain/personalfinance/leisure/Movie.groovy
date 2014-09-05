package personalfinance.leisure

class Movie extends personalfinance.Leisure {

    Integer spentTicket
    Integer food
    String movieName

   static def calcSpentTotal(){
    super.calcSpentTotal(Movie)
   }


    static constraints = {
    food nullable: true

    }
}
