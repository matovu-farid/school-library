require 'json'
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def to_json(*_args)
    JSON.generate({
                    title: @title,
                    author: @author,
                    rentals: @rentals
                  })
  end

  def self.from_json(data)
    new(data['title'], data['author'])
  end

  def add_rental(rental)
    @rentals << rental
  end
end
