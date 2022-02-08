require 'json'
require './book'

# bookcontroller
module BookController
  def load_books
    data = []
    file = './books.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['Title'], book['Author']))
      end
    else
      File.write(file, '[]')
    end
    data
  end

  def save_books
    data = []
    @books.each do |book|
      data.push({ Title: book.title, Author: book.author })
    end
    File.write('books.json', JSON.generate(data))
  end
end
