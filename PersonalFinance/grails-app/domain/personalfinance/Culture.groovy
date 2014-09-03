package personalfinance

class Culture extends Category {

    Integer spentMovie
    Integer spentTheater
    Book book

   def calcSpentTotal(){
    super.calcSpentTotal(Culture)
   }

    static constraints = {
      spentMovie nullable: true
      spentTheater nullable: true
      book nullable: true
    }
}
