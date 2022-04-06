class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    book.rentals << self
    person.rentals << self
  end
end
