def sort words
	return words if words.size <= 1
  	middle = words.pop
  	less   = words.select{|x| x.downcase <  middle.downcase}
  	more   = words.select{|x| x.downcase >= middle.downcase}
  	sort(less) + [middle] + sort(more)
end

words = ["Canizal","Alameda","base","canizal","acero"]
p(sort words)