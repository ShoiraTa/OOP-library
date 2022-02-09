require './student_class'

require 'yaml'

describe Student do

  before :each do
    @Student = Student.new age:22, name:'mike'
  end

  it 'mike is an instance of student' do
    expect(@Student.name).to eq 'mike'
  end

  it 'if age is correct' do
    expect(@Student.age).to eq 22
  end
end