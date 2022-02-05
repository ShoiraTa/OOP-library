require './corrector'
require_relative 'rental'
# Person class
class Person
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(age, name = 'Unknown', parent_permission = 'true')
    @id = Random.rand(1..500)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def can_use_services?
    return true if of_age? || parent_permission

    false
  end

  def validate_name
    @corrector.correct_name(@name)
  end

  private

  def of_age?
    return true if @age >= 10
  end
end
