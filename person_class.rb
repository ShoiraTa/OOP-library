class Person
 attr_reader :id
 attr_accessor :name, :age, :parent_permission

 def initialize (parent_permission= true, name = "Unknown", age)
  @id = Random.rand(1..500)
  @parent_permission = parent_permission
  @name = name
  @age= age
 end

 def can_use_services?
  if ( is_of_age? || parent_permission) 
    return true
  end
   return false
 end

 private
 def is_of_age?
  return true if @age >= 10
 end
 def can_use_services? 
  return true
 end
end
