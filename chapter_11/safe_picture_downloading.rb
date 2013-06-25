Dir.chdir '/Users/Canizal/curso/chapter_11/images_mv'
pic_names = Dir['/Users/Canizal/curso/chapter_11/images/*.{jpg,jpeg}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
total = pic_names.length 
files = total == 1 ? "file" : "files"
print "Downloading #{total} #{files}  "
pic_number = 1
pic_names.each do |name|
  print '.'

  file_exist = true
  while file_exist
  	new_name = if pic_number < 10 
    	"#{batch_name}0#{pic_number}.jpg"
  	else
    	"#{batch_name}#{pic_number}.jpg" 
  	end
  	file_exist = File.exist? new_name
  	pic_number += 1
  end
  File.rename name, new_name
end

puts
puts "Done: #{total} #{files} with name #{batch_name}"