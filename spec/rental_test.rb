require './rental'
require './student'
require './book'

require 'yaml'

describe Rental do
  before :each do
    @book = Book.new('TEST', 'TEST')
    @student = Student.new(13, 23, 'TEST')
    @rental = Rental.new '03.02.24', @book, @student
  end

  it 'instance of Rental class' do
    @rental.should be_an_instance_of Rental
  end

  it 'date is correct' do
    @rental.date.should eql '03.02.24'
  end
end
