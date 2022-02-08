require './student_class'
require './teacher_class'
require './create_person'
require './book'
require './rental'
require './input'
require './create_book'
require './create_rental'
require './book_controller'
require './person_controller'

# options class
class Options
  include BookController
  include PersonController
  def initialize
    @books = load_books
    @persons = load_persons
    @rentals = []
    @input = Input.new
    @create_book = CreateBook.new(@books)
    @create_person = CreatePerson.new(@persons)
    @create_rentals = CreateRental.new(@rentals, @books, @persons)
    # @save =  save_books
  end

  def options
    puts
    puts 'Please choose an option by enterin a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def options_cases(user_input)
    case user_input
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      @create_person.create_person
    when '4'
      @create_book.create_book
    when '5'
      @create_rentals.create_rental
    when '6'
      list_all_rental_by_id
    end
  end

  def list_books
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people
    @persons.each do |person|
      puts "[#{person.class}], Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def list_all_rental_by_id
    print 'ID of person: '
    person_id = @input.read
    puts 'Rentals:'
    @rentals.each do |rental|
      if rental.person.id.to_s == person_id
        puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
      end
    end
  end
end
