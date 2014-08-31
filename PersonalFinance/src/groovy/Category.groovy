package personalfinance

abstract class Category {

    Integer spentTotal
    String reasonExpense
    String formPayment


    def abateSalario(int salarioAtual){
      return salarioAtual - valorGasto
    }

    static constraints = {
    spentTotal nullable: true
    }
}
