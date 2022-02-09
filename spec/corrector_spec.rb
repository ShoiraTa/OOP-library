require './corrector'

require 'yaml'

describe Corrector do
  before :each do
    @corrector = Corrector.new
  end

  it 'check if capitalized' do
    @corrector.correct_name('name').should eql 'Name'
  end
  it 'check if sliced if sting is more than 10 char' do
    @corrector.correct_name('longnameishere').should eql 'Longnameis'
  end
end
