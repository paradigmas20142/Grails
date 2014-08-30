package financaspessoais

abstract class Categoria {

    Integer gastoTotal
    String motivoGasto
    String formaPagamento


    def abateSalario(int salarioAtual){
      return salarioAtual - valorGasto
    }

    static constraints = {
    gastoTotal nullable: true
    }
}
