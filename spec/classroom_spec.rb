require './classroom'

require 'yaml'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Grade8'
  end

  it 'should print the grade' do
    expect(@classroom.label).to eq 'Grade8'
  end
end
