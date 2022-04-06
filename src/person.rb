require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
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

person = Person.new(22, 'maximilianus')
person.correct_name
