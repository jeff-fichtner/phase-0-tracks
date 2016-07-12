#secret agent encryption

=begin encryption (pseudocode)

-define the method (argument)
	-define index variable
	-count the string
	-create a loop that cycles through each index until remaining character
		-if it's a letter (if it's NOT a space)
		    -advance one letter forward
		    -print it
		-elsif "z"
		    -print "a"
		-end
	-end loop
-end method

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



=begin decryption (pseudocode)

-define the method (argument)
	-define index variable
	-create alphabet string
	-count the string
	-create a loop that cycles through each index until remaining character
		if its not a space
		    -find the matching index
		    -subtract the index by one
		    -rematch it with alphabet string
		    -print the result
		end
		add one to the index
	end the loop
end the method

=end

def decrypt str
  n = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  until n >= str.length
    if str[n] != " "
      x = alpha.index(str[n]) - 1
      print alpha[x]
    end
    n += 1
  end
end