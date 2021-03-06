require_relative './display_classes/default'
require_relative './display_classes/create_a_person'
require_relative './display_classes/fetch_rentals'
require_relative './display_classes/list'
require_relative './display_classes/create_book'
require_relative './display_classes/create_rental'
class App
  attr_accessor :books, :rentals, :people

  def initialize(people:, books:, rentals:)
    @people = people
    @books = books
    @rentals = rentals
    @list = List.new
  end

  def list_books
    @list.display_books(@books)
  end

  def list_people
    @list.display_people(@people)
  end

  def create_person
    person = CreatePerson.new.create
    @people << person
  end

  def create_book
    book = CreateBook.new.create
    @books << book
  end

  def create_rental
    rental = CreateRental.new(@books, @people).create
    @rentals << rental
  end

  def list_rentals
    rentals = FetchRental.new(@rentals).get
    @list.display_rentals(rentals)
  end
end
