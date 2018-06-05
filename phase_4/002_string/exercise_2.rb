def caesar_cypher(string, offset)
  #Convert string to array of characters
  characters = string.split(//)
  #Convert characters to ascii values
  characters_ascii = characters.map{|x| x=x.ord}

  output = characters_ascii.map{|x|
    #Check to make sure values are A-Z
    if 65<=x && x <= 90
      x = ((x-65+offset)%26 + 65).chr
    #Check to make sure values are a-z
    elsif 97<=x && x <= 122
      x = ((x-97+offset)%26 + 97).chr
    end
  }

  puts output
end

caesar_cypher("This is a sentence", 40)
