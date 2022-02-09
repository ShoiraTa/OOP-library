require './classroom'

require 'yaml'

describe Classroom do

  before :each do
    @Classroom = Classroom.new 'Grade8'
  end

  it 'should print the grade' do
    expect(@Classroom.label).to eq 'Grade8'
  end
end