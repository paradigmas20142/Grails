package personalfinance

abstract class Category {

    Integer spentTotal
    String reasonExpense
    String formPayment


    def abateSalario(int salarioAtual){
      return salarioAtual - valorGasto
    }

  def calcSpentTotal (def className) {
        def list_object = className.getAll()
        def calcSpentTotal = 0
        list_object.each {value ->
          calcSpentTotal += value.spentTotal
       }
        return calcSpentTotal
   }
    static constraints = {
    spentTotal nullable: true
    }
}
