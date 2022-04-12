require_relative 'src/app'
require_relative './src/case_statement'
require_relative './src/display_classes/default'
require_relative './src/book'
require_relative './src/person'
require_relative './src/rental'
require 'json'

def save(array, filename)
  serialized = []
  array.each do |obj|
    serialized.push(obj)
  end
  File.write(filename, JSON.generate(serialized))
end

def fetch(filename, type)
  if File.exist?(filename)
    (JSON.parse File.read(filename))
      .map { |json| type.from_json(json) }
  else
    []
  end
end

def main
  choice = ''

  books = fetch('books.json', Book)
  people = fetch('people.json', Person)
  rentals = fetch('rentals.json', Rental)

  app = App.new(books: books, people: people, rentals: rentals)
  until choice == '7'
    choice = Default.new.choose
    CaseStatement.new(choice, app).run
  end
  save(app.books, 'books.json')
  save(app.people, 'people.json')
  save(app.rentals, 'rentals.json')
end

main
