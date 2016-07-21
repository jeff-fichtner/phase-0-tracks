# alias program

=begin

Pseudocode:

main menu - 1/add name, 2/see all names, 3/quit

1
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
		puts "What is the agent's full name?"
		agent_name = gets.chomp
		name_arr = agent_name.downcase.split(' ')
		name_arr = split_chars(switch name_arr)
		# scramble it
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