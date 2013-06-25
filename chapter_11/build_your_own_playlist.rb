load "../chapter_10/shuffle_function.rb"

playlist = basic_shuffle(Dir['/Users/Canizal/Music/**/*.mp3'])
File.open 'my_playlist.m3u', 'w' do |f| 
	playlist.each do |song|
		f.write song+"\n" 
	end
end
puts 'Playlist Builded!'