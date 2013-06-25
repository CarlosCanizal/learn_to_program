def clock &block
	hour = Time.new.hour
	if hour == 0
		hour = 12
	else
		hour = hour > 12 ? hour-12 : hour
	end
	hour.times do
		block.call
	end
end

clock do
	puts "DONG!"
end