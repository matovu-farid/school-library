class FetchRental
  def initialize(rentals)
    @rentals = rentals
  end

  def get
    print 'ID of person: '
    id = gets.chomp.to_i

    @rentals.select do |rental|
      rental.person.id == id
    end
  end
end
