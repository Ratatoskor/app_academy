##Tower of Hanoi
#Set original tower
A = [4,3,2,1]
B = []
C = []

#Simple method to display the tower
def display_tower
  puts
  puts "A: " + A.join("-")
  puts "B: " + B.join("-")
  puts "C: " + C.join("-")
  puts
end

#Display instructions to user
puts "Move all the discs from stack A to stack B"
puts "You cannot place a larger disc on top of a smaller disc"
display_tower
puts "Enter \"show\" to view the tower."


while true

  if C==[4,3,2,1]
    puts "YOU WIN!!!!"
    display_tower
    break
  end

  puts "Which stack would you like to move a disc from?"
  puts
  while true
    from = gets.chomp
      if from == "show"
         display_tower
       elsif (from =="A" && !A.empty?) #If A is empty, prompt user again
          from_tower = A
          break
        elsif (from =="B" && !B.empty?) #If B is empty, prompt user again
          from_tower = B
          break
        elsif (from =="C" && !C.empty?) #If C is empty, prompt user again
          from_tower = C
          break
      end
    puts "Please enter a tower to move a disc from."
    puts "The tower must have at least one disc."
    puts
  end

  puts "Which stack would you like to move disc #{from_tower.last} to?"
  while true
    puts "Please enter a tower to move a disc to."
    puts
    to = gets.chomp
    if to == "show"
      display_tower
      elsif (to=="A" || to=="B" || to=="C")

        if to == "A"
          to_tower = A
        elsif to == "B"
          to_tower = B
        elsif to =="C"
          to_tower = C
        end


        if to == from
          puts "You selected the same tower."
          break
        end

        if to_tower.empty?
           to_tower << from_tower.pop
           break
        elsif to_tower.last < from_tower.last
          puts "You cannot place a larger disc on smaller disc."
        elsif to_tower.last>from_tower.last
          to_tower << from_tower.pop
          break
        end
      else
        puts "Please enter a tower to move a disc from."
        puts "Select tower A,B, or C"
    end

  end

end
