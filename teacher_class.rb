# frozen_string_literal: true

require './person_class'
# Teacher class
class Teacher < Person
  attr_accessor :specialization

  def initialize(
    specialization, _age, _name = 'Unknown', parent_permission = 'true'
  )
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
