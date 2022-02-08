require 'json'
require './book'

# bookcontroller
module BookController
  def load_books
    data = []
    file = './books.json'
    File.open(file, 'w') { |f| f.write('[]') } unless File.exist?(file)
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
