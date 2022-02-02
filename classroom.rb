# Class Classroom
class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(_students)
    @add_student << student
    student.classroom = self
  end
end
