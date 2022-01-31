require './person_class'

class Teacher < Person
  attr_accessor :specialization
  def initialize(specialization, age, name = 'Unknown', parent_permission= true) 
    super (age, name, parent_permission )
    @specialization = specialization
  end
end