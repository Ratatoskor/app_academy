# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  a = 0
  z = string.length

  while a<z
     if string[a]==string[z]
       return false
     end
    a+=1
    z-=1
  end
  return true
end

def longest_palindrome(string)
  palindrome = ""
  i=0
  while i<string.length
    j=i+1

    while j<string.length
      if string[i]==string[j]
        if (palindrome?(string.slice(i,j+1-i)) && string.slice(i, j+1-i).length > palindrome.length)
          palindrome = string.slice(i,j+1-i)
        end
       end
      j+=1
    end

    i+=1
  end

  return palindrome
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("===============================================")

#TIME 9.30 (OHHHH YEA!)
