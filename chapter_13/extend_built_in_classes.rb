load "../chapter_9/modern_roman_function.rb"
load "../chapter_10/shuffle_function.rb"

class Integer
	 def factorial 
	 	if self < 0
			return 'You can\'t take the factorial of a negative number!' 
		end

		if self <= 1 
			1
		else
    		self * (self-1).factorial
		end 
	end

	def to_roman
	 	modern_roman self
	end
end

class Array
	def shuffle
		basic_shuffle(self)
	end

end

puts 4.to_roman
puts 4.factorial
p([1,2,3,4,5].shuffle)