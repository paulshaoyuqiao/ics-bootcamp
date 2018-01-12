#This is a method that takes in a question and prints it
#All answers are chomped and turned to lower case.
#If the user answers yes, it will return true.
#If the user answers no, it will return false.
#If the user doesn't answer yes or no, it will tell the user to answer yes or no and repeat the process again.

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end
    puts 'Please answer "yes" or "no".'
  end
end
