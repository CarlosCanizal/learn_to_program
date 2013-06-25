puts "Type your words."
words = []
while true
	word = gets.chomp
	if word.empty?
		if words.count < 3
			puts "Please type at least 3 words"
		else
			break;
		end
	else
		words << word
	end
end
puts "Sorted words:"
puts words.sort