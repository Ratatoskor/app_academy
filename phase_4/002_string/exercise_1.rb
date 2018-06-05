def base_conv(num, base)
  hash = {
          10 => "a",
          11 => "b",
          12 => "c",
          13 => "d",
          14 => "e",
          15 => "f"}

  i=0
  arr = []
  while base**i<=num
      arr << ((num/base**i)%base)
    i+=1
  end




  arr.map!{ |e| hash.fetch(e, e)}


  return arr.join("").reverse
end


puts base_conv(123233, 14)
