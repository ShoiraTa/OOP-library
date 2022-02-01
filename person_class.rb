# frozen_string_literal: true

require './corrector'
# Person class
class Person
  attr_reader :id
  attr_accessor :name, :age, :parent_permission

  def initialize(age, parent_permission = 'true', name = 'Unknown')
    @id = Random.rand(1..500)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @corrector = Corrector.new
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
