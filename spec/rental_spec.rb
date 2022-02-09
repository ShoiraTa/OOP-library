require './rental'
require './student_class'
require './book'

require 'yaml'

describe Rental do

  before :each do
    @book = Book.new 'New_title', 'New_author'
    @Student = Student.new id:nil, age:22, name:'mike'
    @Rental = Rental.new "01.02.22",  @book, @Student
  end

  it 'if Rental is instance of Rental class' do
    @Rental.should be_an_instance_of Rental
  end

  it 'if rent date is correct' do
    @Rental.date.should eql "01.02.22"
  end

end