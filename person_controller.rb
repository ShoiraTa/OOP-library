require 'json'
require './student_class'
require './teacher_class'

module PersonController
  def load_persons
    data = []
    file = './persons.json'
    if File.read(file) != ''
      JSON.parse(File.read(file)).each do |person|
        if person['class'] == 'Student'
            data.push(Student.new(id: person['id'], name: person['name'], age: person['age'],
                                 parent_permission: person['parentPermission']))
        end
        if person['class'] == 'Teacher'
            data.push(Teacher.new(id: person['id'], name: person['name'], age: person['age'],
                                 parent_permission: person['parentPermission'],specialization: person['specialization']))
        end
      end
    end
    data
  end

  def save_persons
    data = []
    @persons.each do |person|
      if person.instance_of?(Teacher)
      data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission, class:person.class, specialization:person.specialization })
      end
      if person.instance_of?(Student)
        data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission, class:person.class})
        end
    end
    File.write('persons.json', JSON.generate(data))
  end
end
