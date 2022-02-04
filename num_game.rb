def my_method
  number = 10
  puts " Guess the number which is more than 5 and less then 15"
  inputed_num = gets.chomp

  if inputed_num > number
    puts "Its too high"
  elsif inputed_num < number
    puts "Its too low"
  else 
    puts "its correct"
  end
end

my_method