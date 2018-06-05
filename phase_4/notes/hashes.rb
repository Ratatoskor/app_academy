arr = [a, b, c]

array = array.map do |e|
  replacements.fetch(e, e)
end

OR

array.map{|e| hash.fetch(e,e)}
