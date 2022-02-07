require './input'
require './create_teacher'
require './create_student'

class CreatePerson

  def initialize(persons)
    @input = Input.new
    @persons = persons
    @create_teacher = CreateTeacher.new(@persons)
    @create_student = CreateStudent.new(@persons)
  end


  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    student_or_teacher = @input.read
    case student_or_teacher
    when '1'
      @create_student.create_student
    when '2'
      @create_teacher.create_teacher
    else
      puts 'Wrong Input!'
      return
    end
   
  end
  
end