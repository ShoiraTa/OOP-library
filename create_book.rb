require_relative 'input'
require './options'

# CreateBook
class CreateBook

  def initialize(books_arr)
    @books_arr = books_arr
    @input = Input.new
  end

  def create_book
    print 'Title: '
    title = @input.read
    print 'Author: '
    author = @input.read
    @books_arr.push(Book.new(title, author))
    puts 'Book created successfully'
    @save
  end

end
