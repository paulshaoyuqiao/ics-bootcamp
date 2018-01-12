def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    puts sorted_array
  #the base case above (when the original array is empty)
  else
    i = 0
    index = 0
    #Variable i is created to loop through the array, index is
    #created to track the index position of the minimum value in the array.
    current_min = unsorted_array[i]
    while i<unsorted_array.length-1
      second_item = unsorted_array[i+1]
      if current_min>second_item
        current_min=second_item
        index = i + 1
      end
      i += 1
    end
    #the while loop above iterates through the array to find the minimum value in the array.
    sorted_array.push(current_min)
    #the minimum value is appended to the new sorted array
    unsorted_array.delete_at(index)
    #the minimum value is deleted from the original array
    #Note: Here, I used delete_at(index) instead of delete(value) because if an array
    #happens to contain duplicate values, all of those values would be eliminated
    #the moment I call delete.
    recursive_sort unsorted_array,sorted_array
    #the recursive_sort function is called on the new trimmed array and sorted array again
  end
end

puts 'Please input the array (strings) that you want to sort below,
make sure that your array follows the format of [\'word\',\'word\',\'word\',...]'
#The above asks for user input
input_array = eval(gets)
#The above converts the input to an actual array
sort(input_array)
#The above the call the recursive sort method on the input array
#Note: this method applies to an array of numbers as well. 
