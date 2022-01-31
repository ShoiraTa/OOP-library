require './person_class'
# Student class
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, _age, _name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
