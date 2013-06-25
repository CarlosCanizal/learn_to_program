load "english_number_function.rb"

bottles = 9999
while bottles > 0 do
	left_bottles = bottles-1
	bottle_label = left_bottles == 1 ? "bottle" : "bottles"
      puts english_number(bottles).capitalize+" bottles of beer on the wall, "+english_number(bottles)+" bottles of beer.\n
      	  Take one down, pass it around, "+english_number(bottles)+" bottles of beer on the wall.\n
      	  If one of those bottles should happen to fall, "+english_number(left_bottles)+" #{bottle_label} of beer on the wall."
	bottles -=1
end