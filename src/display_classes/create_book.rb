require_relative '../book'
class CreateBook
  def general_info
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    [title, author]
  end

  def create
    title, author = general_info
    puts 'Book created successfully'
    Book.new(title, author)
  end
end
