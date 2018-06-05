rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]




cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]



def col_row_conversion(arr)
  output = arr.map {|e| e*0}

  i=0
  arr_length = arr.length
  while i<arr_length
    subarray_length = arr[i].length
    j=0
    while j<subarray_length
      output[j][i] = arr[i][j]
      j+=1
    end
    i+=1
  end
  puts output[0].join(",")
  puts output[1].join(",")
  puts output[2].join(",")
end

puts rows[0].join(",")
puts rows[1].join(",")
puts rows[2].join(",")
puts
col_row_conversion(rows)
