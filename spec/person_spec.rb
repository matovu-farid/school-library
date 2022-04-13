require_relative 'tests_helper'

require 'json'

describe Person do
  before :each do
    @person = Person.new('Age', 'Name', id: 300)
    @person_obj = { 'id' => 300, 'name' => 'Name', 'age' => 'Age', 'parent_permission' => true }
  end

  it 'should create a JSON object' do
    json = @person.to_json
    expected_json = JSON.generate(@person_obj)
    expect(json).to eq expected_json
  end
  it 'should create a Person from Json' do
    person = Person.from_json @person_obj
    expect(person).to have_attributes(age: 'Age', name: 'Name')
  end
  it 'should add a rental' do
    @person.add_rental 'rental'
    rentals = @person.rentals.count
    expect(rentals).to eq 1
  end
end
