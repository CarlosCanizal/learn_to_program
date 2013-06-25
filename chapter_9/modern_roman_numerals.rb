load "modern_roman_function.rb"

puts "Type a positive Integer between 1 and 3000."
decimal_number = gets.chomp

puts modern_roman(decimal_number.to_i.floor)