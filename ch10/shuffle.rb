def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle any_array, shuffled_array
  if any_array.length == 0
    puts shuffled_array
  #the base case above (when the original array is empty)
  else
    index = rand(any_array.length-1)
    #generates a random index position in the original array
    shuffled_array.push(any_array[index])
    #append the value at that index to the shuffled array
    any_array.delete_at(index)
    #delete that value from the original array
    recursive_shuffle(any_array,shuffled_array)
    #the recursive function is called on the trimmed any_array and shuffled_array again.
  end
end

puts 'Please input the array (numerical or strings) that you want to sort below,
make sure that your array follows the format of [#,#,#,#,...] or [\'word\',\'word\',\'word\',...]'
#The above asks for user input
input_array = eval(gets)
#The above converts the input to an actual array
shuffle(input_array)
#The above the call the recursive sort method on the input array
