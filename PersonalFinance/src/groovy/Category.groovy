package personalfinance

abstract class Category {

    Integer spentTotal
    String reasonExpense
    String formPayment


    static Integer calcSpentTotal (def className) {
      def list_object = className.getAll()
      def calcSpentTotal = 0
        list_object.each {value ->
          calcSpentTotal += value.spentTotal
        }
      return calcSpentTotal
    }

    static constraints = {
    spentTotal nullable: true
    reasonExpense nullable: true
    }
}
