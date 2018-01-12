def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  greater = [['hundred', 2],['thousand', 3],['million', 6],['billion', 9],['trillion', 12]]
# Above: a newly added nested array with the name and the exponent (of 10) for each item.
  left = number
  while greater.length > 0
    pair = greater.pop
    name = pair[0]
    base = 10 ** pair[1]
    write = (left/base).to_i
    left = left - write*base
    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + name
      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end
  #The part above iterates through the greater array to determine the
  #the greatest possible exponent of 10s that has a designated english word that
  #the number can take.
  write = (left/10).to_i
  left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # This is for the case when the tenth digit is 1.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The other case when the tenth digit is not 1.
    end
    if left > 0
      num_string = num_string + '-'
      #formatting the word so we have tenth_digit-unit_digit
    end
  end
  write = left
  if write > 0
    num_string = num_string + ones_place[write-1]
    # This for determining the unit digit
  end
  # Now we just return "num_string"...
  num_string
end


t = 5000
while t>1
  t_str = english_number(t)
  t_one_less_str = english_number(t-1)
  puts t_str+' bottles of beer on the wall, '+t_str+' bottles of beer.'
  puts 'Take one down and pass it around, '+t_one_less_str+' bottles of beer on the wall.'
  puts ''
  t=t-1
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
