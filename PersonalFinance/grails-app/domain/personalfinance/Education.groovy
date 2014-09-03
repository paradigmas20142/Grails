package personalfinance

class Education extends Category {

    String typeOfEducation
    String typeOfInstitution
    Integer spentTuition
    Book book


def calcSpentTotal () {
        def list_object = Education.getAll()
        def calcSpentTotal = 0
        list_object.each {value ->
          calcSpentTotal += value.spentTotal
       }
        return calcSpentTotal
   }

    
    static constraints = {
      spentTuition nullable: true
      book nullable: true
    }

    static mapping = {
    table "education"
    }


}
