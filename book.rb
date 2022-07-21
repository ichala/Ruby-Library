class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author

  def add_rental(person, date)
    rental = Rental.new(date, self, person)
    @rentals << rental
  end
end
