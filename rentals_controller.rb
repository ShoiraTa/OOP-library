require 'json'
require './rental'

# rentalscontoller
module RentalsController
  def get_book_title(title)
    @books.each { |book| return book if book.title == title }
  end

  def get_person_id(id)
    @persons.each { |person| return person if person.id == id }
  end

  def load_rentals
    data = []
    file = './rentals.json'
    File.write(file, '[]') unless File.exist?(file)
    data
  end

  def save_rentals
    data = []
    @rentals.each do |rental|
      data.push({ date: rental.date, book: rental.book.title, person: rental.person.id })
    end

    File.write('rentals.json', JSON.generate(data))
  end
end
