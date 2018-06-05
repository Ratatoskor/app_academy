# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)

  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end
puts idx
  return true
end



def nth_prime(number)
  i=2 # Lowest prime is 2
  prime_count=0
  prime_number=nil

  while prime_count<number

    if is_prime?(i)
      prime_count+=1
      prime_number=i
    end

    if i%2==0
      i+=1
    else
      i+=2
    end

  end
  return prime_number

end
#  value = 0


#  is_prime?(number)



=begin
  count = 0
  i = 0
  while i < number
   if is_prime?(i) == true
     count += 1
     i += 1
    else
      i += 1
    end
  end
    puts count
  return count

end

 if is_prime(number) == true
    i = 0
    prime_count = 0
    while i < number
    is_prime(i)
    i -= 1

   prime_count + 1
=end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #nth_prime")
puts("===============================================")
    puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
    puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
    puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
    puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
    puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts("===============================================")


# TIME 4.45 (GOOD!)
