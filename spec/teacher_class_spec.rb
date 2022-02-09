require './teacher_class'

require 'yaml'

describe Teacher do
  before :each do
    @teacher = Teacher.new specialization: 'Math', age: 44, name: 'herbert'
  end

  it 'mike is an instance of teacher' do
    expect(@teacher.name).to eq 'herbert'
  end

  it 'if age is correct' do
    expect(@teacher.age).to eq 44
  end

  it 'if specialization is correct' do
    expect(@teacher.specialization).to eq 'Math'
  end
end
