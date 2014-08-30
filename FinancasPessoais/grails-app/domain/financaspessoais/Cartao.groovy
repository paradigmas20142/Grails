package financaspessoais

class Cartao {

    String empresa
    Integer limite
    Date vencimento

    static belongsTo = [saude:Saude]


    static constraints = {
    }

    static mapping = {
      table "cartao"
    }
}
