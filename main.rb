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
    when '2'
      @app.list_people
    when '3'
      @app.create_person
    when '4'
      @app.create_book
    when '5'
      @app.create_rental
    when '6'
      @app.list_rentals
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
  puts "Wrong value entered"
end

main
