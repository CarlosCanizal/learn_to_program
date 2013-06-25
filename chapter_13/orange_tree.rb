class OrangeTree
	@@dead = 10
	@@height_grow = 2
	@@years_to_produce_fruit = 3
	@@old_tree_after = 7
	@@young_fruit = 3
	@@old_fruit = 6


	def initialize
		@orange_count = 0
		@height = 0
		@years = 0
		@alive = true
	end

	def is_alive?
		@alive
	end

	def height
		return "Sorry, your tree is dead.It was #{@height} units tall when it died!!" unless @alive
		"Your tree is #{@height} units tall!!"
	end

	def age?
		return "Sorry, your tree is dead.It was #{@years} years old when it died!!" unless @alive
		"Your tree is #{@years} years old!!"
	end

	def one_year_passes
		return "Sorry, your Tree cannot grow more, is dead!!" unless @alive
		#@orange_count = 0
		@years+=1
		@height+=@@height_grow
		if @years >= @@dead
			@alive = false
			return "Your tree turned #{@years} old. Sorry, is dead!"
		end
		message = nil
		if @years == @@years_to_produce_fruit
			message = "Your tree can give you #{@@young_fruit} oranges per year"
			@orange_count = @@young_fruit
		elsif @years == @@old_tree_after
			message = "Your tree can give you #{@@old_fruit} oranges per year"
			@orange_count == @@old_fruit
		end
		if @years >= @@years_to_produce_fruit && @years < @@old_tree_after
			@orange_count = @@young_fruit
		elsif @years >= @@old_tree_after
			@orange_count = @@old_fruit
		else
			@orange_count = 0
		end
		 "Your tree turned #{@years} old. #{message}"
	end

	def count_the_oranges
		return "Sorry, your Tree cannot give you more sweet oranges, is dead!!" unless is_alive?
		oranges_label = @orange_count == 1 ? "orange" : "oranges"
		"Your tree has #{@orange_count} #{oranges_label}!"
	end

	def pick_an_orange
		return "Sorry, your Tree cannot give you more sweet oranges, is dead!!" unless is_alive?
		return "There is no more oranges this year" if @orange_count == 0
		@orange_count-=1
		if @orange_count == 0
			message = "That was the last one, I hope you enjoyed it."
		elsif @orange_count == 1
			message = "There is just one more, use it wisely."
		else
			message = "There is #{@orange_count} oranges more."
		end

		return "This orange was delicious!! #{message}"
	end

end