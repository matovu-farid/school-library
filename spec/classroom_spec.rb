require_relative 'tests_helper'

require 'json'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'label'
  end

  it 'should add a student' do
    student = double('student')
    allow(student).to receive(:add_classroom).and_return(3)
    @classroom.add_student(student)
    students = @classroom.students.count
    expect(students).to be 1
  end
end
