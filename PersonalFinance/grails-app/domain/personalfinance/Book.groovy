package personalfinance

class Book {

    String name
    String publisher
    Integer price

    static belongsTo = [education: Education]

    static constraints = {
    }
}
