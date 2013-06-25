load "leap_year.rb"

puts "Please type your birth year, eg. 1985:"
year = gets.chomp
puts "Please type your birth month, eg. 9 or sep:"
month = gets.chomp
puts "Please type your birth day, eg. 23"
day = gets.chomp

leaps = 0
today = Time.now
birthdate =  Time.local(year,month,day)

(birthdate.year..today.year).each do |year|
	leaps +=1 if is_leap?(year)
end

days = ((today.to_i - birthdate.to_i)/60/60/24)-leaps
years = days/365


years.times do |spank|
	puts "SPANK"
end

puts "You recived #{years} SPANKS!!"