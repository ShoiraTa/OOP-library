require './input'

class CreateTeacher

  def initialize(persons)
    @input = Input.new
    @persons = persons
  end

  def create_teacher
    print 'Age: '
    age = @input.read
    print 'Name: '
    name = @input.read
    print 'Specialization: '
    specialization = @input.read
    @persons.push(Teacher.new(specialization: specialization, age: age.to_i, name: name))
    puts 'Teacher created successfully'
  end

end