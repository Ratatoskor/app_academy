# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  #check for which number is smaller
  if number1 > number2
    temp = number1
    number1 = number2
    number2 = tempa
  end

  i=1 # for while loop

  while i<=number1
    if number1%i==0 && number2%i==0
      factor = i
    end
    i+=1
  end
puts factor
return factor
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #greatest_commmon_factor")
puts("===============================================")
    puts(
      'greatest_common_factor(9,3) == 3: ' +
      (greatest_common_factor(9,3) == 3).to_s
    )
    puts(
      'greatest_common_factor(16, 24) == 8: ' +
      (greatest_common_factor(16, 24) == 8).to_s
    )
    puts(
      'greatest_common_factor(3, 5) == 1: ' +
      (greatest_common_factor(3, 5) == 1).to_s
    )
puts("===============================================")

#TIme 3.10 (Pretty good. Messed up swapping variables again)
