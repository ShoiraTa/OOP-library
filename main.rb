require './student_class'
require './teacher_class'
require './book'
require './rental'
require './input'
require './options'

# App class
class App

  def initialize
    @input = Input.new
    @options = Options.new
  end

  def run
    user_input = 0
    puts 'Welcome to School Library App!'
    while user_input != '7'
      @options.options
      user_input = @input.read
      @options.options_cases(user_input)
    end
    puts 'Come back soon!'
    @options.save_books
  end

end

def main
  app = App.new
  app.run
end

main
