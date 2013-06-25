def modern_roman decimal_number
    return "Please Type an Integer beweetn 1 and 3000" unless decimal_number > 0 && decimal_number <= 3000
    return "Please Type an Integer" unless decimal_number.is_a? Integer
    romans = [["I",1,0],
              ["V",5,1],
              ["X",10,1],
              ["L",50,10],
              ["C",100,10],
              ["D",500,100],
              ["M",1000,100]]
    sustract = {1=>"I",5=>"V",10=>"X",50=>"L",100=>"C",500=>"D",1000=>"M"}
    
    roman_number = ""
    romans.reverse_each do |roman|

        roman_number << roman[0]*(decimal_number/roman[1])
        decimal_number %= roman[1]

        if (decimal_number == roman[1]-roman[2])
          roman_number << sustract[roman[2]] + sustract[roman[1]]
          decimal_number -= decimal_number
        end
    end
    
    roman_number
end