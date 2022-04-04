class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    @age >= 18
  end
  # rubocop:enable Naming/PredicateName

  def can_use_services?
    is_of_age? && @parent_permission
  end
  private :is_of_age?
end
