require './person_class'
# Teacher class
class Teacher < Person
  attr_accessor :specialization

  def initialize(
    specialization:, age:, name: 'Unknown', parent_permission: true, id: nil
  )
    super(age: age, name: name, parent_permission: parent_permission, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
