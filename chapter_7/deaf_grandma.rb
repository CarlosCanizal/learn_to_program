puts "Grandma says: HI! SON"
while true
	puts "You says: "
    answer = gets.chomp

    break if answer == "BYE"

    if answer == answer.upcase
    	year = 1930+rand(21)
        puts "Grandma says: NO, NOT SINCE #{year}!"
    else
        puts "Grandma says: HUH?! SPEAK UP, SON!"
    end
end
puts "Grandma says: BYE, SON!"
