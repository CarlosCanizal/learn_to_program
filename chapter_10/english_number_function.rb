def english_number decimal_number

  return "Please Type an Integer greater or equal to 0" unless decimal_number > 0
  return "Please Type an Integer" unless decimal_number.is_a? Integer

  return "zero" if decimal_number == 0

  num_string = ''

  digits = ['one', 'two','three','four','five','six','seven','eight','nine']
  tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers  = ['eleven','twelve','thirteen','fourteen',  'fifteen',  'sixteen','seventeen', 'eighteen', 'nineteen']
  equivalents = [['hundred',2],
                ['thousand',3],
                ['million',6],
                ['billion',9],
                ['trillion',12]]
  left = decimal_number
  english_num = ""
  equivalents.reverse.each do |equivalent|
    number_name = equivalent[0]
    number_base = 10 ** equivalent[1] 
    write = left/number_base
    left = left - write*number_base

    if write > 0
      base = english_number write
      english_num = english_num + base + ' ' + number_name
      if left > 0
        english_num += ' '
      end 
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      english_num += teenagers[left-1]
      left = 0
    else
      english_num += tens[write-1]
    end
    if left > 0
      english_num += '-'
    end
  end

  write = left
  left = 0

  if write > 0
    english_num += digits[write-1]
  end

  english_num
end