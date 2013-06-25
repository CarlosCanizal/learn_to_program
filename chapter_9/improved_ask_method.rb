def ask question 
	while true
		puts question
		response = gets.chomp.downcase
		return true if response == 'yes' 
		return false if response == 'no'
		puts "Sorry, you have to type 'yes' or 'no'."
	end 
end
puts(ask('Do you like eating tacos?'))