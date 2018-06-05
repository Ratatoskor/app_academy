#### App Academy, Ruby Basics

https://prepwork.appacademy.io/mini-curriculum/


#### ARRAYS ####

~~~CREATING ARRAYS~~~

empty_array = Array.new
empty_array = []
square_numbers = [4,9,16]
some_fruits = ["apple", "banana", "passionfruit"]


~~~ACCESSING BY INDEX BLOCK~~~

Objects are store by increasing indicies, starting at 0
(0, 1, 2, 3, etc.)

some_fruits = ["apple", "banana", "passionfruit"]
puts some_fruit[0]
# => "apple"

~~~ACCESSING CONSECUTIVE ITEMS~~~

some_fruits = ["apple", "banana", "passionfruit"]
some_fruits[0..1]
# => ["apple","banana"]

.. (two periods, inclusive)
[0..1] access from start to end point (inclusive)

... (three periods, non-inclusive)
[0...1] access from start to end point (non-inclusive)

example = [1, 2, 3, 4, 5]
example[2..4]
# => [3, 4, 5]
example[2...4]
# => [3, 4]

-1 can be used to access end value
-2 can be used to access second to last value
-3 etc.

example = [5, 3, 2, 1, 55]
example[2..-1]
# => [2, 1, 55]


~~~ACCESSING ELEMENTS IN ORDER~~~

Iterators can be used to access elements in ORDER
cool_things = ["car", "laser", "money"]
cool_things.each do |cool_thing|
  puts "I like #{cool_thing}"
end
# prints: I like race cars!
#         I like lasers!
#         I like aeroplanes!

DO NOT MODIFY ARRAY DURING ITERATION
Instead, use the MAP function

Delete multiple elements without iteration:
#delete_if

~~~SETTING AND ADDDED ELEMENTS~~~

Add at specific index
animals = ["penguin"]
animals[0] = "monkey"
# animals = ["monkey", "penguin"]

Add to end of the array using << (shovel  operator)
animals = []
animals << "monkey"
animals << "penguin"
animals << "giraffe"
#animals = ["monkey", "penguin", "giraffe"]

Concatenate two arrays
some_numbers = [1, 3, 5]
more_numbers = [7, 9, 11]

all_numbers = some_numbers + more_numbers
#all_numbers = [1, 3, 5, 7, 9, 11]

~~~Array Size~~~

[1, 2, 3].count
# => 3
[].empty?
# => true
[1, 2, 3].empty?
# => false

~~~Push and Pop~~~
# computes (1 (2 3 +) *)
nums=[]

nums << 1
nums << 2
nums << 3
nums << (nums.pop) + (nums.pop)
# num = [1, 5]
nums << (nums.pop) * (nums.pop)
# num = [5]

Push adds to the end of an array
Pop removes last element of the array

~~~Using Array as a Queue~~~

num = []
nums << 1
nums << 2
nums << 3

nums.delete_at(0)
# nums = [2, 3]

~~~Shift and Unshift~~~
#Opposite of Push and pop

array = [1, 2, 3, 4]
array.shift
# => 1
# array = [2, 3, 4]

array.unshift(5)
# array = [5, 2, 3, 4]

Stacks can be used to reverse strings incombination with
string.split() and array.join()

~~~Array -> String with Join~~~
cool_thing = ["racecar", "laser", "airplane"]
"Things I like include #{cool_things.join(", ")}."]
# => "Things I like include race cars, lasers, aeroplanes."

~~~Finding Elements~~~
arr.each #access array elements in order
arr[i]   #access array element(s) by position
arr.include?(x) #Find if array contains object x
arr.index(x)    #returns position of first occurence of x

##example
arr = [1,2,3,4,5]
arr.include?(9)
# => false
arr.index(3)
# => 2
arr.index(9)
# => nil

~~~Accessing first and last elements~~~~

arr.first #selects first elem in array
arr.last #selects last elem in  array

#example
die = [1, 2, 3, 4, 5, 6]
die.first
# => 1
die.last
# => 6

~~~Sort an array~~~

arr.sort #Sort array in ascending order (does not modify array)
arr.sort! #Sort array in place. Array is modified.

~~~Shuffle an array~~~

[1, 2, 3,].shuffle
# => [2, 3, ]

~~~Random sampling (discrete uniform)~~~

arr.sample # selects array elem at Random

#example
die = [1, 2, 3, 4, 5, 6]
die.sample
# => 3
die.sample
# => 5

~~~Naming Array~~~

fancy_car_brands = ["Maserati", "Porsche", "Tesla"]
junk_models = ["Chevy Nova", "Ford Pinto"]
fancy_car_brands.each do |fancy_car_brand|
  junk_models.each do |junk_model|
    puts "#{fancy_car_brand} would never make junk like the #{junk_model}"
  end
end

#Choosing appropriate names is very important
#to improving code legibility


#Arrays can hold different types of things, but should
#really contain one type of thing (for simplicity)

#example
cool_things = ["Race cars", "lasers", "aeroplanes"]
lucky_numbers = [3, 7, 42]
animals = [
  {:name => "Gizmo", :species => "cat"},
  {:name => "Maurice", :species => "fish"}
]

## Hetergeneous arrays are a pain to work with
## If mix of strings & numbers, difficulties arise
## if you call .upcase on it, or try to add/multiple ELEMENTS
