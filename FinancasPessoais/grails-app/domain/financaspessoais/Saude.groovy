package financaspessoais

class Saude extends Categoria {

    String tipoHospital
    Integer valorGastoRemedio
    Integer valorGastoConsulta
    Cartao cartao



    static constraints = {
      cartao nullable: true
      valorGastoRemedio nullable: true
      valorGastoConsulta nullable: true
    }

    static mapping = {
      table "saude"
    }
}

