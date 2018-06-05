def two_sum(array)
  #set counter and length for first while loop
  i=0
  length = array.length

  while i<length
    #set counter for second while loop
    j=i+1
    while j<length
      # compare elements, if sum==0, return false
      if (array[i] + array[j])==0
        return true
      end
      j+=1
    end
    i+=1
  end

  return false

end

array = [2, 3, 4, 6, 7, 0, -4, 3, -2]
array2 = [2, 3, 4, 6, 7, 0, 4, 3, 2]
array3 = [2, 3, 4, 6, 7, 0, 0, 3, 2]
puts two_sum(array)
puts two_sum(array2)
puts two_sum(array3)
