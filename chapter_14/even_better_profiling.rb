def profile profile_active, block_description, &block
	if profile_active
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

#Here you can turn on or off setting false or true
profile  true, '25000 doublings' do
	number = 1
	25000.times do
		number = number + number
	end
	puts "#{number.to_s.length} digits"
end