require_relative './permission'
require_relative '../classroom'
require_relative '../student'
require_relative '../teacher'
class CreatePerson
  def general_info
    print 'Do you want to create a student (1) or teacher (2) [Input the number]: '
    number = gets.chomp
    print 'Age: '

    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    [number, age, name]
  end

  def create
    number, age, name = general_info
    success = 'Person created successfully'

    case number
    when '1'
      print 'Has parent permission: '
      parent_permission = gets.chomp
      permission = Permission.new(parent_permission).get
      classroom = Classroom.new('')
      student = Student.new(classroom, age, name, parent_permission: permission)
      puts success
      student
    when '2'
      print 'Specialization: '
      specialization = gets.chomp

      teacher = Teacher.new(specialization, age, name, parent_permission: permission)
      puts success
      teacher
    end
  end
end
