require './nameable'

class Person < nameable
  attr_reader :rental
  attr_writer :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
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

  def add_rental(rental)
    @rental.push(rental)
    rental.book = self
  end

  def of_age?
    return true if @age >= 18

    false
  end

  private :of_age?
end
