require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def correct_name
    @name
  end

  def to_json(*_args)
    JSON.generate({
                    name: @name,
                    age: @age,
                    parent_permission: @parent_permission,
                    rentals: @rentals
                  })
  end

  def self.from_json(data)
   person = new(data['name'], data['age'], parent_permission: data['parent_permission'])
    person.add_rental( data['rentals'])
   person 
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
