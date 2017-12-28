while true
  say = gets.chomp.to_s
  if say!=say.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
  else
    if say!='BYE'
      rand_year = rand(20)+1930
      puts 'NO, NOT SINCE '+rand_year.to_s+'!'
    else
      puts 'Ok. I see you are busy. Bye.'
      break
    end
  end
end
#This program works based on the following logics:
#1. An initially infinite while loop is created.
#2. The user input is chomped and converted to string.
#3. If the input is not all in upper case, the output from the Grandma will be 'HUH?!  SPEAK UP, SONNY!'.
#4. If the input is all in upper case, a random integer between 1930 and 1950 (inclusive) is generated.
#5. The intended output from the Grandma will be printed along with the integer (converted to string).
#6. Unless the input is 'BYE', the program will not terminate itself (When grandma says goodbye, that indicates the program has terminated itself.)
