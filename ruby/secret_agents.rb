#secret agent encryption

=begin encryption (pseudocode)

-define the method (argument)
-count the string
-create a loop that cycles through each index until remaining character
  -if it's a letter (if it's NOT a space)
    -advance one letter forward
  -end
  -add to new string
-end loop

=end

def encrypt str
  index = 0
  until index >= str.length
    if str[index] != " " && str[index] != "z"
      x = str[index].next
      print x
    elsif str[index] == "z"
      x = "a"
      print x
    else
      x = str[index]
      print x
    end
    index += 1
  end
end

x = encrypt("zed")

puts x