require 'json'
require './book'

# bookcontroller
module BookController
  def load_books
    data = []
    file = './books.json'
    if !File.exists?(file)
      File.open(file, "w") {|f| f.write("[]") }
    end
    if File.read(file) != ''
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['Title'], book['Author']))
      end
    end
    data
  end

  def save_books
    data = [{ Title: 'Harry', Author: 'JK' }]
    puts 'data'
    @books.each do |book|
      data.push({ Title: book.title, Author: book.author })
    end
    File.write('books.json', JSON.generate(data))
  end
end
