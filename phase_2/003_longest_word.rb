# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(string)
  arr = string.split
  position = 0
  i=0
  while i<arr.length
    if arr[i].length>arr[position].length
      position = i
    end
    i+=1
  end
  return arr[position]
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")
