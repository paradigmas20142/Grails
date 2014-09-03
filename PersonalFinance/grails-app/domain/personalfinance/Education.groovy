package personalfinance

class Education extends Category {

    String typeOfEducation
    String typeOfInstitution
    Integer spentTuition
    Book book

    
   def calcSpentTotal(){
    super.calcSpentTotal(Education)
   }

    static constraints = {
      spentTuition nullable: true
      book nullable: true
    }

    static mapping = {
    table "education"
    }


}
