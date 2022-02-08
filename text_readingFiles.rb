require "json"
require './book'

# File.open("file.txt", "r") do | file |
#   for line in file.readlines()
#     puts line
#   end
#   # puts file.readline()
#   # puts file.readlines()
#   # puts file.read()
# end

# File.open("file.txt", "r").close

file = "books.json"
data = []
if File.read(file) != "" 
  JSON.parse(File.read(file)).each do |book|
    data.push(Book.new(book['Title'], book['Author']))
  end
end

# puts data.

# File.open("books.json", "r") do | file |

#   puts file.readlines()

# end