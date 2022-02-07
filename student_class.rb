require './person_class'
require_relative 'classroom'
# Student class
class Student < Person
  attr_reader :classroom

  def initialize(age:, name: 'Unknown', parent_permission: true, classroom: nil, id: nil)
    super(id: id, age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
    @name = name
  end

  def classroom_fn(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
