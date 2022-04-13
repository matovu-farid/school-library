# require_relative 'tests_helper'

# require 'json'

# describe student do
#   before :each do
#     @student = student.new('Classroom', 'Age','Name')
#     @student_obj = { 'id' => 300, 'classroom' => 'Classroom', 'age' => 'Age', 'name'=>'Name','parent_permission' => true }
#   end

#   it 'should create a JSON object' do
#     json = @student.to_json
#     expected_json = JSON.generate(@student_obj)
#     expect(json).to eq expected_json
#   end
#   it 'should create a student from Json' do
#     student = student.from_json @student_obj
#     expect(student).to have_attributes(age: 'Age', name: 'Name')
#   end
#   it 'should add a rental' do
#     @student.add_rental 'rental'
#     rentals = @student.rentals.count
#     expect(rentals).to eq 1
#   end
# end
