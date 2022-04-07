class Default
  def choose
    puts
    puts %(Welcome to the school library?

Please choose an option by entering a number:
1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - exit
    )
    gets.chomp.downcase
  end

  def wrong_input
    puts 'Wrong input'
    choose
  end
end
