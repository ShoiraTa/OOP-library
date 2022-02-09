require './rental'
require './student_class'
require './book'

require 'yaml'

describe Rental do
  before :each do
    @book = Book.new 'New_title', 'New_author'
    @student = Student.new id: nil, age: 22, name: 'mike'
    @rental = Rental.new '01.02.22', @book, @student
  end

  it 'if Rental is instance of Rental class' do
    @rental.should be_an_instance_of Rental
  end

  it 'if rent date is correct' do
    @rental.date.should eql '01.02.22'
  end
end
