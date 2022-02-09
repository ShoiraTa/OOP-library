require './person_class'

require 'yaml'

describe Person do
  before :each do
    @person = Person.new id: 1, age: 22, name: 'mike'
  end

  it 'mike is an instance of person' do
    @person.should be_an_instance_of Person
  end

  it 'if age is correct' do
    expect(@person.age).to eq 22
  end

  it 'should check if person can use services' do
    @person.can_use_services?.should == true
  end
end
