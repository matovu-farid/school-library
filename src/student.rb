require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission: true, id: rand(1000))
    super(age, name, parent_permission: parent_permission,id:id)
    @classroom = classroom
    classroom.add_student self
  end

  def add_classroom(classroom)
    @classroom = classroom
  end

  def belongs_to(classroom)
    @classroom = classroom
    classroom.students << self
  end

  def play_hooks
    '¯\\(ツ)/¯'
  end
end
