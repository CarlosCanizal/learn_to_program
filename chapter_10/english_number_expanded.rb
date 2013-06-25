load 'english_number_function.rb'

puts "Write a number:"
number = gets.chomp.to_i
puts english_number(number)