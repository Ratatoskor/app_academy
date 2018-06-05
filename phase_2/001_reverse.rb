def reverse(string)
  i=string.length-1
  new_str=""
  while 0<=i
    new_str = new_str + string[i]
    i-=1
  end
  puts new_str
  return new_str
end

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")
