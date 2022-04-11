require_relative './app'
class CaseStatement
  def initialize(choice, app)
    @choice = choice
    @app = app
  end

  def run
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
end
