require_relative 'tests_helper'

require 'json'

describe Student do
  before :each do
    classroom = double('classroom')
    allow(classroom).to receive(:add_student).and_return(3)
    @student = Student.new(classroom, 'Age', 'Name', parent_permission: false, id: 300)
    @student_obj = { 'id' => 300, 'name' => 'Name', 'age' => 'Age', 'parent_permission' => false }
  end
  it 'should create a JSON object' do
    json = @student.to_json
    expected_json = JSON.generate(@student_obj)
    expect(json).to eq expected_json
  end
  it 'should add a rental' do
    @student.add_rental 'rental'
    rentals = @student.rentals.count
    expect(rentals).to eq 1
  end
end
