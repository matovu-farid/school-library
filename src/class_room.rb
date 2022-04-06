def classroom
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def addStudent(student)
    @students << student
    student.classroom = self
  end
end
