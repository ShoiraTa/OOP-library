require './person_class'

require 'yaml'

describe Person do

  before :each do
    @Person = Person.new id: 1, age:22, name:'mike'
  end

  it 'mike is an instance of person' do
    @Person.should be_an_instance_of Person
  end

  it 'if age is correct' do
    expect(@Person.age).to eq 22
  end

  it "should check if person can use services" do
    @Person.can_use_services?.should ===  true
  end

end