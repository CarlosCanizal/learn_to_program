def old_roman decimal_number
    return "Please Type an Integer beweetn 1 and 3000" unless decimal_number > 0 && decimal_number <= 3000
    return "Please Type an Integer" unless decimal_number.is_a? Integer
    romans = [["I",1],
              ["V",5],
              ["X",10],
              ["L",50],
              ["C",100],
              ["D",500],
              ["M",1000]]
    
    roman_number = ""
    romans.reverse_each do |roman|
        roman_number << roman[0]*(decimal_number/roman[1])
        decimal_number %= roman[1]
    end
    
    roman_number
end

puts "Type a positive Integer between 1 and 3000."
decimal_number = gets.chomp

puts old_roman(decimal_number.to_i.floor)