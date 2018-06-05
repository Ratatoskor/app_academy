# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  i=0 #counter for while loop
  first = 0
  second = 0
  third = 0
  while i<nums.length
    if nums[i]>first
      third = second
       second = first
      first = nums[i]
    elsif nums[i]>second
      third = second
      second = nums[i]
    elsif nums[i]>third
      third = nums[i]
    end
    i+=1
  end
  return third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #third_greatest")
puts("===============================================")
    puts(
      'third_greatest([5, 3, 7]) == 3: ' +
      (third_greatest([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_greatest([5, 3, 7, 4]) == 4: ' +
      (third_greatest([5, 3, 7, 4]) == 4).to_s
    )
    puts(
      'third_greatest([2, 3, 7, 4]) == 3: ' +
      (third_greatest([2, 3, 7, 4]) == 3).to_s
    )
puts("===============================================")

#TIME: 6.30 (Messed up order of assigning numbers.)
