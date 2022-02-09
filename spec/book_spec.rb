require './book'
require './rental'


require 'yaml'

describe Book do

  before :each do
    @book = Book.new 'New_title', 'New_author'
  end

  it 'should print the book title' do
    expect(@book.title).to eq 'New_title'
  end

  it "should print the book author" do
    expect(@book.author).to eq 'New_author'
  end
end