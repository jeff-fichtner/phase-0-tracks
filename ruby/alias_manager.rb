# alias program

=begin

Pseudocode:

ask for name (downcase)
split into two object array
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
print data

=end

# algorithm

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

# test

p consonant 'z'
p vowel 'u'