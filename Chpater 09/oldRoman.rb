#This is a method that converts numbers into old Roman numerals.
#The input number is sliced into a list of its digits.
#Each part of the Roman numeral is then computed (first divided out the 5, the remaining is then computed using modulo 5)
#The strings are then combined and printed as the final old Roman numerals equivalent of the number.
def old_roman_numeral number
  digits = ['D','C','L','X','V','I']
  i = 0
  old_roman_num = 'M'*(number%10)
  number = (number/10).to_i
  while i<digits.length-1
    old_roman_num += digits[i]*((number%10)/5).to_i+digits[i+1]*((number%10)%5)
    number = (number/10).to_i
    i += 1
  end
  puts old_roman_num
end

old_roman_numeral(3)
old_roman_numeral(52)
old_roman_numeral(96)
old_roman_numeral(120)
old_roman_numeral(781)
old_roman_numeral(1290)
old_roman_numeral(2017)
