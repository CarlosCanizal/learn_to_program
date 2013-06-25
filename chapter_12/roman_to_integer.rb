
def roman_to_integer number
  number.upcase!
  numbers = {"M"=>1000,"D"=>500,"C"=>100,"L"=>50,"X"=>10,"V"=>5,"I"=>1}
  rest = {"C"=>["M","D"],"X"=>["C","L"],"I"=>["V","X"]}
  validation = {"M"=>3,"D"=>1,"C"=>3,"L"=>1,"X"=>3,"V"=>1,"I"=>3}

  index_validation = 0
  while index_validation < number.length
    return "Type a valid roman number." unless validation.has_key?(number[index_validation])
    index_validation+=1
  end

  index = 0
  decimal_number = 0
  size = number.size
  while index < size
    counter =1
    if rest.include?(number[index])
      if rest[number[index]].include?(number[index+1])
        decimal_value = numbers[number[index+1]] - numbers[number[index]]
        index+=1
      else
        decimal_value = numbers[number[index]]
      end
    else
        decimal_value = numbers[number[index]]
    end

    while number[index] == number[index+1]
      counter+=1
      index+=1
      return "Type a valid roman number" if counter > validation[number[index]]
    end

    decimal_number += decimal_value*counter
    index+=1
  end
  decimal_number
end

puts "Give me a roman number"
roman = gets.chomp

puts roman_to_integer(roman.to_s)