require './person_class'
# Student class
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, _age, _name = 'Unknown', _parent_permission = true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
