package personalfinance.leisure

class Movie extends personalfinance.Leisure {

    Integer spentTicket
    String movieName

   def calcSpentTotal(){
    super.calcSpentTotal(Movie)
   }


    static constraints = {
    }
}
