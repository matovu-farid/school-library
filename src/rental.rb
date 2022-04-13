require_relative './book'
require_relative './person'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    book.add_rental self
    person.add_rental self
  end

  def to_json(*_args)
    JSON.generate({
                    date: @date,
                    book: @book,
                    person: @person
                  })
  end

  def self.from_json(data)
    new(
      data['date'],
      Person.from_json(data['person']),
      Book.from_json(data['book'])
    )
  end
end
