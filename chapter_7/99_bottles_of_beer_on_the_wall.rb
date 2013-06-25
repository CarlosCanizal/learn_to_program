bottles = 99
while bottles > 0 do

	left_bottles = bottles-1
	bottle_label = left_bottles == 1 ? "bottle" : "bottles"

    puts bottles.to_s+" bottles of beer on the wall, "+bottles.to_s+" bottles of beer.\n
      	  Take one down, pass it around, "+bottles.to_s+" bottles of beer on the wall.\n
      	  If one of those bottles should happen to fall, "+(left_bottles).to_s+" #{bottle_label} of beer on the wall."
	bottles -=1
end