# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  i=0 # counter to loop through while
  count = 0
  letter = ""
  while i<string.length-1
    temp_count = 0
    temp_letter = ""
    j=i
    while j<string.length
      if string[i]==string[j]
        temp_count +=1
        temp_letter = string[i]
      end
      j+=1
    end
    if temp_count>count
      count = temp_count
      letter = temp_letter
    end
  i+=1
  end
  return [letter,count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")

## Timm 6.15 (Missed an end for an if statement)
