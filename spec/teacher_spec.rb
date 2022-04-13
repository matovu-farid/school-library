require_relative 'tests_helper'

require 'json'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Specialization', 'Age','Name', parent_permission: false,id:300)
    @teacher_obj = { 'id' => 300, 'name' => 'Name', 'age'=>'Age','parent_permission' => false }
  end

  it 'should create a JSON object' do
    json = @teacher.to_json
    expected_json = JSON.generate(@teacher_obj)
    expect(json).to eq expected_json
  end
  it 'should add a rental' do
    @teacher.add_rental 'rental'
    rentals = @teacher.rentals.count
    expect(rentals).to eq 1
  end
end
