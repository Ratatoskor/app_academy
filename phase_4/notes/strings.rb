### STRINGS ###

#encapsulate strings in quotes ("" or '')


"letter"='letter'
# => true


# If text inclues quotes, use one form for quotes
=begin
One classic way to handle ` “ ` and ` ‘ ` and ` \ ` within strings is
to make a double quoted string and use ` \ ` as an escape character.
Ex: ` “"Pigs" is double quoted, and this is a backslash \” ` will print:
“Pigs” is double quoted, and this is a backslash \
=end

~~~String Interpolation~~~

#Only double quotes ("") support string interpolation

worst_day = "Monday"
"#{worst_day}s are the hardest."
# => "Mondays are the hardest."

MURDER = "redrum".reverse.upcase
"#{MURDER}! #{MURDER}!"
# => REDRUM! REDRUM!

~~~Concatenating and appending to strings~~~

likes = "race cars, lasers, aeroplanes"
dislikes = "harmonicas"

"I like " + likes + ". I don't like " + dislikes + "."
# => "I like race cars, lasers, aeroplanes. I don't like harmonicas."

### Strings can be 'grown' by appending them with + or <<

count_in = ""
count_in = count_in + "One, "
count_in = count_in + "two, "
# => One, two,

count_in = ""
count_in << "One, "
count_in << "two, "
# => One, two,

~~~Accessing a substring~~~
#Substrings can be accessed in the same manner as an array

"this is my sentence"[5..6]
# => "is"

~~~Length~~~~

"words words words".length
# => 17


~~~Split string into parts~~~

ice_creams = "Bi-Rite, Humphrey Slocum, Mitchell's"
ice_creams.split(", ")
#=> ["Bi-Rite", "Humphrey Slocum", "Mitchell's"]

[1] pry(main)> motto = "We all scream for ice cream!"
=> "We all scream for ice cream!"
[2] pry(main)> motto.split(" ")
=> ["We", "all", "scream", "for", "ice", "cream!"]

~~~Nil converts to empty string~~~

nil.to_s
=> ""

~~~~Other Methods~~~~

.chomp # removes return
.strip # removes leading and trailing whitespace

.gsub(patten, replacement) -> new_str
#Returns a copy of str with the all occurrences of pattern
#substituted for the second argument. Use with Regex

"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
"hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
"hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
"hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"

.to_i #converts string into integer
.to_sym #returns symbol corresponding to str, creates symbol if it didn't exist
*int # returns new string with integer copies of input
.downcase #all uppercase letters are replaced with lowercase
.upcase #all lowercase lettrrs are replaced with uppercase
