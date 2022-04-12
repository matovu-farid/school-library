require_relative 'src/app'
require_relative './src/case_statement'
require_relative './src/display_classes/default'
require_relative './src/book'
require 'json'

def main
  choice = ''
  books = (JSON.parse File.read('books.json')).map { |json| Book.from_json(json) }

  app = App.new(books: books, people: [], rentals: [])
  until choice == '7'
    choice = Default.new.choose
    CaseStatement.new(choice, app).run
  end
  serialized_books = []
  app.books.each do |book|
    serialized_books.push(book)
  end

  File.write('books.json', JSON.generate(serialized_books))
end

main
