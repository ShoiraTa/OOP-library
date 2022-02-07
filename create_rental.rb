require './input'
require './rental'

# CreateRental
class CreateRental
  def initialize(rentals_arr, books, persons)
    @books = books
    @rentals_arr = rentals_arr
    @input = Input.new
    @persons = persons
  end

  def create_rental
    puts 'Please choose a book by number:'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = @input.read
    puts 'Please choose a person from the list by number (not id)'
    @persons.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_index = @input.read
    if book_index.to_i >= @books.length || person_index.to_i >= @persons.length
      puts 'Wrong Index!'
      return
    end

    print 'Date: '
    date = @input.read
    @rentals_arr.push(Rental.new(date, @books[book_index.to_i], @persons[person_index.to_i]))
    puts 'Rental created successfully'
  end
end
