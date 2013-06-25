def music_shuffle(array, shuffle_array=[],shuffle_by=4)
    size = array.size
    return shuffle_array if size == 0
    random = rand(size)
    shuffle_song = array[random]
    if shuffle_array.size > 0

    	next_song = shuffle_song.split "/"
    	prev_song = shuffle_array.last.split "/"

    	if next_song[shuffle_by] == prev_song[shuffle_by]
    		category = nil
    		array.each_with_index do |song,index|
    			category_song = song.split "/"
    			category ||= category_song[shuffle_by]
    			category_song[shuffle_by]
    			return music_shuffle(array,shuffle_array,shuffle_by) if category != category_song[shuffle_by]
    		end
    		shuffle_by+=1  if shuffle_by < next_song.size
    		return music_shuffle(array, shuffle_array,shuffle_by)
    	else
    		shuffle_array << shuffle_song
    		array.delete_at(random)
    		return music_shuffle(array,shuffle_array,shuffle_by)
    	end
    else
    	shuffle_array << shuffle_song
    	array.delete_at(random)
    	return music_shuffle(array,shuffle_array,shuffle_by)
    end

    shuffle_array
end

playlist = music_shuffle(Dir['/Users/Canizal/Music/**/*.mp3'])

File.open 'my_mix_music.m3u', 'w' do |f| 
	playlist.each do |song|
		f.write song+"\n" 
	end
end
puts 'Mix Builded!'

