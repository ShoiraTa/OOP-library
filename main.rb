require './student_class'
require './teacher_class'
require './book'
require './rental'

class  App

  def initialize 
    @books = []
    @persons = []
    @rentals = []
  end

  def run
    user_input = 0
    puts 'Welcome to School Library App!'
    while user_input != '7'
      options
      user_input = gets.chomp
      options_cases(user_input)
    end
    puts 'Come back soon!'
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
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_all_rental_by_id
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    student_or_teacher = gets.chomp

    case student_or_teacher
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Wrong Input!'
      return
    end

    puts 'Person created successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(specialization: specialization, age: age.to_i, name: name))
  end

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp

    unless parent_permission.upcase == 'Y' || parent_permission.upcase == 'N'
      puts 'Wrong Input!'
      return
    end

    parent_permission = parent_permission.upcase == 'Y'
    @persons.push(Student.new(age: age.to_i, name: name, parent_permission: parent_permission))
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))

    puts 'Book created successfully'
  end

  def create_rental
    puts 'Please choose a book by number:'

    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end

    book_index = gets.chomp

    puts 'Please choose a person from the list by number (not id)'

    @persons.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_index = gets.chomp

    if book_index.to_i >= @books.length || person_index.to_i >= @persons.length
      puts 'Wrong Index!'
      return
    end

    print 'Date: '
    date = gets.chomp

    @rentals.push(Rental.new(date, @books[book_index.to_i], @persons[person_index.to_i]))

    puts 'Rental created successfully'
  end
  def list_books
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people
    @persons.each do |person|
      puts "[#{person.class}] Name: #{person.5}, ID: #{person.id}, Age: #{person.age}"
    end
  end
  def list_all_rental_by_id
    print 'ID of person: '
    person_id = gets.chomp

    puts 'Rentals:'
    @rentals.each do |rental|
      if rental.person.id.to_s == person_id
        puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
      end
    end
  end

end

def main
  app = App.new
  app.run
end

main