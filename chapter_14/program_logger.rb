def log desc, &block
	puts "Beginning '#{desc.inspect}'..."
	result = yield
	puts "...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
	log 'some little block' do
		5
	end
	log 'yet another block' do 
		"I Like Mexican Food"
	end
	false
end