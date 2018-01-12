#This is a method that converts numbers into old Roman numerals.
#The input number is sliced into a list of its digits.
#Each part of the Roman numeral is then computed (first divided out the 5, the remaining is then computed using modulo 5)
#The strings are then combined and printed as the final old Roman numerals equivalent of the number.
def old_roman_numeral number
  digits = []
  i = 4
  while i>0
    digits.push (number%10)
    number = (number/10).to_i
    i -= 1
  end
  thousandth = 'M'*digits[3]
  hundredth = 'D'*(digits[2]/5).to_i+'C'*(digits[2]%5)
  tenth = 'L'*(digits[1]/5).to_i+'X'*(digits[1]%5)
  unit = 'V'*(digits[0]/5).to_i+'I'*(digits[0]%5)
  puts thousandth+hundredth+tenth+unit
end

old_roman_numeral(3)
old_roman_numeral(52)
old_roman_numeral(96)
old_roman_numeral(120)
old_roman_numeral(781)
old_roman_numeral(1290)
old_roman_numeral(2017)
