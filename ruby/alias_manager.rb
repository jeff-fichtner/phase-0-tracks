# alias program

=begin

Pseudocode:

ask for name (downcase)
add each name to array
switch items
for each item:
split into characters
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
clear the array
print data

=end

# initiate empty array
name = []

# initiate empty data hash
alias_names = {}

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

# print data