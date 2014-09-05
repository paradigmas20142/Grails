package personalfinance.leisure

class Movie extends personalfinance.Leisure {

    Integer spentTicket
    String movieName

   static def calcSpentTotal(){
    super.calcSpentTotal(Movie)
   }


    static constraints = {
    }
}
