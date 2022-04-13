require_relative 'tests_helper'
require 'json'

describe Book do
  before :each do
    @book = Book.new 'Title', 'Author'
    @book_obj = { 'title' => 'Title', 'author' => 'Author' }
  end

  it 'should create a JSON object' do
    json = @book.to_json
    expected_json = JSON.generate(@book_obj)
    expect(json).to eq expected_json
  end
  it 'should create a Book from Json' do
    book = Book.from_json @book_obj
    expect(book).to have_attributes(title: 'Title', author: 'Author')
  end
  it 'should add a rental' do
    @book.add_rental 'rental'
    rentals = @book.rentals.count
    expect(rentals).to eq 1
  end
end
