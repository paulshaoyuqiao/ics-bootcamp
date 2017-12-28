count = 0
while true
  say = gets.chomp.to_s
  if (say!='BYE')&&(say!= say.upcase)
    puts 'HUH?!  SPEAK UP, SONNY!'
    count =0
  elsif (say!='BYE')&&(say == say.upcase)
    rand_year = rand(20)+1930
    puts 'NO, NOT SINCE '+rand_year.to_s+'!'
    count = 0
  elsif (say == 'BYE')
    count = count +1
    if (count>2)
      puts 'Ok..You can leave. I see you\'re busy.'
      break
    end
  end
end
#This program works based on the following logics:
#1. A variable count that starts at 0 is created.
#2. The variable count is created to keep track of the number of times that the user says 'BYE'.
#3. An initially infinite while loop is created.
#4. The user input is chomped and converted to string.
#5. The loop is branched based on the following conditions:
#Scenario 1. If the input is not 'BYE' AND the input is not in upper case,
#            Grandma will say 'HUH?!  SPEAK UP, SONNY!', and
#            The variable count will be set to 0.
#            What I did above helped reset the count for 'BYE' to make sure it is 3 in a row.
#Scenario 2. If the input is not 'BYE' AND the input is in upper case,
#            a random integer between 1930 and 1950 (inclusive) will be generated,
#            The intended output from Grandma will be printed with the integer,
#            The variable count would be set to 0.
#Scenario 3. If the input is 'BYE' ,
#            The variable count would be incremented by 1.
#            Grandma would pretend not to hear it and not respond.
#            However, if the count has reached above 2 (3 at least),
#            Grandma would say goodbye to the user and the program will terminate itself.
