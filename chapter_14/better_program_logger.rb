$LEVEL = -1
def log desc, &block
	$LEVEL+=1
	tab = "\t"*$LEVEL
	puts "#{tab}Beginning '#{desc.inspect}'..."
	result = yield
	puts "#{tab}...#{desc.inspect} finished, returning: #{result}"
	$LEVEL-=1
end

log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			"lots of love"
		end
		42
	end
	log 'yet another block' do 
		"I Like Italian Food"
	end
	true
end