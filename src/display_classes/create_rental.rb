require_relative '../rental'
require_relative './list'

class CreateRental
  def initialize(books, people)
    @books = books
    @people = people
    @list = List.new
  end

  def general_info
    puts 'Select a book from the following list by number'
    @list.display_books(@books)
    book_id = gets.chomp.to_i
    puts 'Select a person from the following list by number [not by Id]'
    @list.display_people(@people)
    person_id = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    [book_id, person_id, date]
  end

  def create
    book_id, person_id, date = general_info
    person = @people[person_id]
    book = @books[book_id]
    puts 'Rental created successfully'
    Rental.new(date, person, book)
  end
end
