while true
  puts 'Starting Year?'
  start = gets.to_i
  puts 'Ending Year?'
  last = gets.to_i
  if (start<0)||(last<0)
    puts 'Please make sure all your inputs are positive integers.'
  elsif (start>last)
    puts 'Input Error.
Please make sure your starting year is smaller than your ending year.
Please try again.'
  elsif (start<=last)
    while (start<=last)
      if ((start%4==0)&&(start%100!=0))||(start%400==0)
        puts start
      end
      start=start+1
    end
    break
  end
end
#This program works based on the following logics:
#1. An initially infinite while loop is created.
#2. Lines prompting the user to put the start year and end year are printed.
#3. The collected input are converted to integers.
#4. If the start and end year are less than 0, an error message is sent and user
#   is reminded to input all positive integers.
#5. If the start year is greater than the end year, an error message is sent AND
#   user is reminded to make sure than end year is greater than start year.
#6. In either of the cases above, the program will reset and restart
#7. In the case if the start and end year makes sense numerically and chronologically,
#   A while loop going through the start year and end year(inclusive) is initiated,
#   If the year is divisible by 4 and not divisible by 100 OR the year is divisible by 400,
#   the year is printed.
#   The start year is incremented by 1.
#8. As the while loop comes to an end, the loop is terminated. 
