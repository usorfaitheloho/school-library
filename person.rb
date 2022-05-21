require './nameable'

class Person < Nameable
  
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(age, name = 'Unknown', parent_permission: true, id: nil)
    super()
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    return true if of_age || parent_permission == true

    false
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(book, date, self)
  end

  def of_age?
    return true if @age >= 18

    false
  end

  private :of_age?
end
