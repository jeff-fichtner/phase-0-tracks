# alias program

=begin

Pseudocode:

main menu - 1/add name, 2/see all names, 3/quit

1
	initiate name array
	ask for name (downcase)
	add each name to array
	switch items
	split into character arrays
	change characters:
		if vowel
			aeiou
			change to next index in string
			edge case
		elsif consonant
			bcdfghjklmnpqrestvwxyz
			change to next index in string
			edge case
	rejoin
	capitalize
	store in data structure
	print the name
	clear the array
2
	print data
3
	end program

=end

# initiate empty data array
alias_names = []

# methods

# split names into character arrays
def split_names array
	array.map! {|name| name.chars}
end

# rejoin characters into names
def rejoin_chars array
	array.map! {|subarr| subarr.join}
end

# empty the array
def empty_array array
	array.clear
end

# add to hash
def store_name key, value
	alias_names[key] = value
end

# switch name
def switch array
	array[0], array[1] = array[1], array[0]
end

# swapping vowels
def vowel str
	alpha = "aeiou"
	if str == 'u'
		return 'a'
	else
		index = alpha.index(str)
		new_index = index + 1
    	return alpha[new_index]
    end
end

# swapping consonants
def consonant str
	alpha = "bcdfghjklmnpqrestvwxyz"
	if str == 'z'
		return 'b'
	else
		index = alpha.index(str)
		new_index = index + 1
	    return alpha[new_index]
	end
end


# driver code

loop do
	puts "To add a name to the database, type \"1\". To see all names, type \"2\". To end the program, type \"q\"."
	input == gets.chomp
	if input != q || input != "1" || input != "2"
		puts "Please enter a valid input."
	elsif input == "1"
		name = []
		puts "What is the agent's name?"
		agent_name = gets.chomp.downcase
		# scramble it
		# store in data hash
	elsif input == "2"
		alias_names.each {|key, value| puts "Agent #{key}'s alias is \"#{value}\"."}
	elsif input == "q"
		break
	end
end