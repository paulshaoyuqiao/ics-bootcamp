#This is a method that converts numbers to new Roman numerals.
#The number is first sliced into a list containing its digits in the order
#The old Roman version of the number is first computed using division(rounding) and modulo
#Then, applying the changes in the new Roman version, the number is modified based on a series of conditionals for 4s and 9s
#The final new Roman digit is then printed by combining thousandth, hundredth, tenth, and unit digits in string
def new_roman_numeral number
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
  hundredth = 'CD' if hundredth == 'C'*4
  hundredth = 'CM' if hundredth == 'D'+'C'*4
  tenth = 'XL' if tenth == 'X'*4
  tenth = 'XC' if tenth == 'L'+'X'*4
  unit = 'IV' if unit == 'I'*4
  unit = 'IX' if unit == 'V'+'I'*4
  puts thousandth+hundredth+tenth+unit
end
