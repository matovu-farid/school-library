require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    classroom.students << self
  end

  def belongs_to(classroom)
    @classroom = classroom
    classroom.students << self
  end

  def play_hooks
    '¯\\(ツ)/¯'
  end
end
