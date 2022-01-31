require './person_class'
# Teacher class
class Teacher < Person
  attr_accessor :specialization
  
  def initialize(
    specialization, _age, _name = 'Unknown', _parent_permission: true
  )
  super (age, parent_permission, _name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
