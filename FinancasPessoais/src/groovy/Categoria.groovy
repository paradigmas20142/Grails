package financaspessoais

abstract class Categoria {

    int valorGasto
    String motivoGasto
    String formaPagamento

    def abateSalario(int salarioAtual){
      return salarioAtual - valorGasto
    }

    static constraints = {
    }
}
