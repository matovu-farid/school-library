require_relative './display_classes/default'
require_relative './display_classes/create_a_person'
require_relative './display_classes/fetch_rentals'
require_relative './display_classes/list'
require_relative './display_classes/create_book.rb'
require_relative './display_classes/create_rental.rb'
class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @list = List.new
    @choice = ''
    @default = Default.new
  end

  def case_statement
    case @choice
    when '1'
      @list.display_books(@books)
    when '2'
      @list.display_people(@people)
    when '3'
      person = CreatePerson.new.create
      @people << person
    when '4'
      book = CreateBook.new.create
      @books << book
    when '5'
      rental = CreateRental.new(@books,@people).create
      @rentals << rental
    when '6'
      rentals = FetchRental.new(@people).get
      @list.display_rentals(rentals)
    end
  end

  def run
    until @choice == '7'
      @choice = @default.choose
      case_statement
    end
  end
end
