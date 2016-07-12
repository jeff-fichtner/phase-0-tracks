#secret agent encryption

=begin

encryption (pseudocode)

-define the method (argument)
	-define index variable
	-define empty return string variable
	-create a loop that cycles through each index until remaining character
		-if it's a letter (if it's NOT a space)
			-advance one letter forward
			-add to return string
		-if "z"
	    	-add "a" to return string
		-end
	-end loop
	-return the full return string
-end method

=end

def encrypt str
  index = 0
  return_str = ""
  until index >= str.length
    if str[index] != " " && str[index] != "z"
      x = str[index].next
      return_str = return_str + x
    elsif str[index] == "z"
      x = "a"
      return_str = return_str + x
    else
      x = str[index]
      return_str = return_str + x
    end
    index += 1
  end
  return return_str
end



=begin

decryption (pseudocode)

-define the method (argument)
	-define index variable
	-define empty return string
	-create alphabet string
	-create a loop that cycles through each index until remaining character
		-if it's not a space
			-find the matching index
			-subtract the index by one
			-rematch it with alphabet string
			-add to return string
		-end
		-add one to the index
	-end the loop
	-return the full return string
-end the method

=end

def decrypt str
  n = 0
  return_str = ""
  alpha = "abcdefghijklmnopqrstuvwxyz"
  until n >= str.length
    if str[n] != " "
      x = alpha.index(str[n]) - 1
      return_str = return_str + alpha[x]
    end
    n += 1
  end
  return return_str
end

puts decrypt(encrypt("swordfish"))