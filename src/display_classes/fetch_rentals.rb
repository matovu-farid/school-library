class FetchRental
  def initialize(people)
    @people = people
  end

  def get
    print 'ID of person: '
    id = gets.chomp.to_i
    rentals = []
    @people.each do |person|
      if person.id == id
        rentals = person.rentals
        break
      end
    end
    rentals
  end
end
