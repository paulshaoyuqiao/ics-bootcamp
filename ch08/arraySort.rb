puts 'Please input your words below, one word per line.
Press ENTER to exit the program and retreive the output whenever you are done.
This program will return all the words you\'ve typed in alphabetical order.'
arr = []
while true
  word = gets.chomp.to_s
  if (word != '')
    arr.push word
  else
    break
  end
end
puts arr.sort
#This program works based on the following logics:
#1. An empty array is created.
#2. An initially infinite while loop is initiated.
#3. If the input is not blank, the word will be chomped, converted to string, and appended to the end of the array.
#4. If the input is blank (done by pressing ENTER), the loop will terminiate itself.
#5. A sorted array is printed in the end as the intended output.
