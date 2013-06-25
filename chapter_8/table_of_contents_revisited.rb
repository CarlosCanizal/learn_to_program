line_width = 60
table = [["Chapter 1","Getting Started", "page 1"],
		 ["Chapter 2","Numbers", "page 9"],
		 ["Chapter 3","Letters", "page 13"]]
puts "Table of Contents".center(line_width)

table.each do |chapter|
    puts chapter[0]+": "+chapter[1].ljust(line_width/2)+chapter[2].rjust(line_width/2)
end