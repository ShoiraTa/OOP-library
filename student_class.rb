require './person_class'
require_relative 'classroom'
# Student class
class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', parent_permission = 'true', classroom: nil)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom_fn(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
