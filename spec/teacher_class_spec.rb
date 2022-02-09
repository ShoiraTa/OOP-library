require './teacher_class'

require 'yaml'

describe Teacher do

  before :each do
    @Teacher = Teacher.new specialization:'Math', age:44, name:'herbert'
  end

  it 'mike is an instance of teacher' do
    expect(@Teacher.name).to eq 'herbert'
  end

  it 'if age is correct' do
    expect(@Teacher.age).to eq 44
  end

  it 'if specialization is correct' do
    expect(@Teacher.specialization).to eq 'Math'
  end
end