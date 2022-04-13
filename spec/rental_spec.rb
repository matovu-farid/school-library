require_relative 'tests_helper'

require 'json'

describe Rental do
  before :each do
    book = double('book')
    person = double('person')
    allow(book).to receive(:add_rental) { '' }
    allow(person).to receive(:add_rental) { '' }
    @rental = Rental.new 'Date', person, book
    @book_obj = { 'date' => 'Date', 'person' => 'Person', 'book' => 'Book' }
  end

  it 'should create a JSON object' do
    expect(@rental).to have_attributes(date: 'Date')
  end
 
end
