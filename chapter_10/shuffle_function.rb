def basic_shuffle(array, shuffle_array=[])
    size = array.size
    return shuffle_array if size == 0
    random = rand(size)
    shuffle_array << array[random]
    array.delete_at(random)
    return basic_shuffle(array,shuffle_array)
end