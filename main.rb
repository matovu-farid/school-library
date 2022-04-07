require_relative 'src/app'

class Main
  def initialize
    @choice = ''
    @default = Default.new
    @app = App.new
  end

  def case_statement
    case @choice
    when '1'
      @app.list_books
      puts
    when '2'
      @app.list_people
      puts
    when '3'
      @app.create_person
      puts
    when '4'
      @app.create_book
      puts
    when '5'
      @app.create_rental
      puts
    when '6'
      @app.list_rentals
      puts
    end
  end

  def run
    until @choice == '7'
      @choice = @default.choose
      case_statement
    end
  end
end

def main
  Main.new.run
rescue StandardError
  puts 'Wrong value entered'
end

main
