puts "Write a year:"
year = gets.chomp.to_i
if year%4 == 0
	if year%400 == 0
		puts "#{year} is leap year"
	elsif year%100 ==0
		puts "#{year} is not leap"
	else
		puts "#{year} is leap year"
	end
else
	puts "#{year} is not leap"
end