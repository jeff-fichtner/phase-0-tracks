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
	#new_str = ""
	until index >= str.length
		if str[index] != " "
			x = str[index].next
			puts x
		else
			x = str[index]
			puts x
		end
		#new_str = new_str + x
		index += 1
	end
	#new_str
end

encrypt("b c")