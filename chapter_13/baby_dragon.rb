load "Dragon.rb"

puts "Type the name of your baby dragon:"
name = gets.chomp.capitalize
dragon = Dragon.new name
commands = Dragon.instance_methods - Object.methods

while true
	print "Commands: "
	puts commands.join(", ")
	print "Command for #{name}: "
	command = gets.chomp.downcase
	exit if command == "exit"
	if dragon.respond_to?(command)
		dragon.send command
	else
		puts "#{name} does not respond to '#{command}' command." 
	end
end