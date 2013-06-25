def get_birthdate(name,persons)
  return "#{name} info is not registered." unless persons.include? name
  year = persons[name].year
  today = Time.now
  years = today.year - year
  puts "#{persons[name].strftime("%B")} #{persons[name].day}, #{years} years"
end

persons = {}
names = []
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  name, date, year = line.split(',')
  persons[name] = Time.local(year, *(date.split))
  names << name
end

puts "Which person do you want to know the birthday?"
puts names
print "Write the name: "
name = gets.chomp
puts get_birthdate(name,persons)