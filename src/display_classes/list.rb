class List
  def display_rentals(list)
    list.each do |rental|
      date = rental.date
      book = rental.book
      title = book.title
      author = book.author
      puts "Date: #{date}, Book: \"#{title}\" by #{author}"
    end
    puts
  end

  def display_people(list)
    list.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts
  end

  def display_books(list)
    list.each_with_index do |book, index|
      title = book.title
      author = book.author
      puts "#{index}) Title: #{title}, Author: #{author} "
    end
    puts
  end
end
