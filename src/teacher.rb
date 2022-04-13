require_relative 'person'
class Teacher < Person
  def initialize(specialization, age, name, parent_permission: true, id: rand(1000))
    super(age, name, parent_permission: parent_permission, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
