# alias program

=begin

Pseudocode:

main menu - 1/add name, 2/see all names, 3/quit

1
	ask for name (downcase)
	add each name to array
	switch items
	split into array of character arrays
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
2
	print data
3
	end program
else
	invalid input, try again

=end

# initiate empty data hash
alias_names = {}

# methods

# switch name
def switch array
	array[0], array[1] = array[1], array[0]
end

# split names into character arrays
def split_chars array
	array.map! {|name| name.chars}
end

# rejoin characters into names, capitalizes
def rejoin_chars array
	array.map! {|subarr| subarr.join.capitalize}
end

# swapping vowels
def vowel char
	vowels = 'aeiou'
	if char == 'u'
		return 'a'
	else
		index = vowels.index(char)
		new_index = index + 1
    	return vowels[new_index]
    end
end

# swapping consonants
def consonant char
	consonants = 'bcdfghjklmnpqrstvwxyz'
	if char == 'z'
		return 'b'
	else
		index = consonants.index(char)
		new_index = index + 1
	    return consonants[new_index]
	end
end

# vowel sorting
def if_vowel char
	vowels = 'aeiou'
	if vowels.include?(char)
		return vowel(char)
	else
		return char
	end
end

# consonant sorting
def if_consonant char
	consonants = 'bcdfghjklmnpqrstvwxyz'
	if consonants.include?(char)
		return consonant(char)
	else
		return char
	end
end

menu = "To add a name to the database, type \"1\". To see all names, type \"2\". To end the program, type \"q\"."
repeat_menu = "To add another name to the database, type \"1\". To see all names, type \"2\". To end the program, type \"q\"."

# driver code

puts
puts "Welcome to the Alias Database."
puts
puts menu
loop do
	input = gets.chomp
	if input == "1"
		puts "What is the agent's first name?"
		agent_name_first = gets.chomp
		puts "What is the agent's last name?"
		agent_name_last = gets.chomp
		agent_name = agent_name_first + ' ' + agent_name_last
		name_arr = agent_name.downcase.split(' ')
		name_arr = split_chars(switch name_arr)
		# DRY these 4 lines
		name_arr[0].map! {|char| if_vowel(char)}
		name_arr[0].map! {|char| if_consonant(char)}
		name_arr[1].map! {|char| if_vowel(char)}
		name_arr[1].map! {|char| if_consonant(char)}
		name_arr = rejoin_chars name_arr
		alias_names[agent_name] = name_arr.join(' ')
		puts "Agent #{agent_name}'s alias is \"#{alias_names[agent_name]}\"."
		puts repeat_menu
	elsif input == "2"
		puts
		alias_names.each {|key, value| puts "Agent #{key}'s alias is \"#{value}\"."}
		puts
		puts menu
	elsif input == "q"
		break
	else
		puts "Please enter a valid input."
		puts
		puts menu
	end
end