class Rental
    attr_accessor :date
    attr_reader :book, :person

    def initialize(date,book,person)
        super()
        @date = date
    end

    def book=(book)
        @book = book
        book.rental.push(self) unless book.rental.includes?(self)
    end

    def person=(person)
        @person = person
        person.rental.push(self) unless person.rental.includes?(self)
      end
    
end