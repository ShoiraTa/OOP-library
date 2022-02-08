require './input'

# CreateStudent
class CreateStudent
  def initialize(persons)
    @input = Input.new
    @persons = persons
  end
  def create_student
    print 'Age: '
    age = @input.read
    print 'Name: '
    name = @input.read
    print 'Has parent permission? [Y/N]: '
    parent_permission = @input.read
    unless parent_permission.upcase == 'Y' || parent_permission.upcase == 'N'
      puts 'Wrong Input!'
      return
    end
    parent_permission = parent_permission.upcase == 'Y'
    @persons.push(Student.new(age: age.to_i, name: name, parent_permission: parent_permission))
    puts 'Student created successfully'
  end
end
