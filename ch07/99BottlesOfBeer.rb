t = 99
while t>1
  t_str = t.to_s
  t_one_less_str = (t-1).to_s
  puts t_str+' bottles of beer on the wall, '+t_str+' bottles of beer.'
  puts 'Take one down and pass it around, '+t_one_less_str+' bottles of beer on the wall.'
  puts ''
  t=t-1
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
#This program works based on the following logics:
#1. The varaible t starting at 99 is created.
#2. A while loop that will terminate at t=1 is initiated.
#3. Then t and t-1 are both converted to strings and assigned to some other variables.
#4. The required lines of lyrics for each value of t are printed.
#5. Then t is decremented by 1 per loop.
#6. After the while loop terminates at t=1. The last (different) two lines of lyrics are printed.
