#### Uniq

class Array
  def my_uniq
    new_array = []
    self.each do |element|
      if new_array.include?(element)==false
        new_array.push(element)
      end
    end
    return new_array
  end
end


arr = [1,2,3,4,6,8,4,1,3,7,35,123,2,136,1324]
puts arr.my_uniq
