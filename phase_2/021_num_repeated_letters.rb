# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

=begin

def num_repeats(string)
  i=0
  arr=[]
  while i<string.length
   arr[i] = string[i]
   i+=1
  end

  count = 0
  switch = 1
  i=0
  while i<arr.length
    j=i+1
    switch = 1
    while j<arr.length
      if (arr[j]!=nil && arr[i]==arr[j] && switch==1)
        count +=1
        switch =0
        arr[j] = nil
      elsif (arr[j]!=nil && arr[i]==arr[j] && switch==0)
        arr[j]=nil
      end
      j+=1
    end

    i+=1
  end
return count
end

=end


def num_repeats(string)
  i=0
  arr=[]
  while i<string.length
   arr[i] = string[i]
   i+=1
  end

  count = 0
  i=0
  while i<arr.length
    j=i+1
    switch = "on"
    while j<arr.length
      if (arr[i]==arr[j] && switch=="on")
        count +=1
        switch = "off"
        arr.delete_at(j)
      elsif (arr[i]==arr[j] && switch=="off")
        arr.delete_at(j)
      end
      j+=1
    end

    i+=1
  end
return count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")


#TIME 9.30 (Fuck Yea! Might be an easier way, though ...)
