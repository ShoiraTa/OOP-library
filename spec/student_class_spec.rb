require './student_class'

require 'yaml'

describe Student do
  before :each do
    @student = Student.new age: 22, name: 'mike'
  end

  it 'mike is an instance of student' do
    expect(@student.name).to eq 'mike'
  end

  it 'if age is correct' do
    expect(@student.age).to eq 22
  end
end
