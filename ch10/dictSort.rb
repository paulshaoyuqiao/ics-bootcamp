def dictSort some_array
  recursive_dictSort some_array, []
end

def recursive_dictSort unsorted_array, sorted_array
  if unsorted_array.length == 0
    puts sorted_array
  #same as the sort method
  else
    i = 0
    index = 0
    #same as the sort method
    current_min = unsorted_array[i]
    while i<unsorted_array.length-1
      second_item = unsorted_array[i+1]
      if current_min.downcase>second_item.downcase
        current_min=second_item
        index = i + 1
      end
      i += 1
    end
    #Note: the difference here is that when comparing the two items, I convert
    #them above temporarily both to lower case, so the comparison won't follow the
    #ASCII codes and sort the words like in a dictionary.
    sorted_array.push(current_min)
    #the minimum value is appended to the new sorted array
    unsorted_array.delete_at(index)
    #same as the sort method
    recursive_dictSort unsorted_array,sorted_array
    #call the method recursively
  end
end

puts 'Please input the array (strings) that you want to sort below,
make sure that your array follows the format of [\'word\',\'word\',\'word\',...]'
#The above asks for user input
input_array = eval(gets)
#The above converts the input to an actual array
dictSort(input_array)
#The above the call the recursive sort method on the input array
