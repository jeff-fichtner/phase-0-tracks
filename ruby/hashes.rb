# methods

def int question
	while true
		puts question
		reply = gets.chomp.to_i

		if reply > 0
			return reply
		elsif reply <= 0
			puts "Please answer with an appropriate number."
		end
	end
end

def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if reply == "yes"
			return true
		elsif reply == "no"
			return false
		else
			puts "Please answer with \"yes\" or \"no\"."
		end
	end
end

# application hash

client = {
}

# driver code

# fills out form
puts "Welcome to the client form."

puts "What is the client's name?"
client[:name] = gets.chomp
puts "What is the client's address?"
client[:address] = gets.chomp
client[:number] = int "What is the client's phone number? (Only enter numbers)"
client[:modern] = ask "Does the client like modern design? (yes/no)"
client[:vintage] = ask "Does the client like vintage design? (yes/no)"

puts "You have completed the form."

# begins edit loop
loop do
	puts "To add a value, type \"1\". To update a value, type \"2\". To update a key, type \"3\". To delete a key, type \"4\". To see the entire hash, type \"5\". To quit, type \"q\"."
	input = gets.chomp
	if input == "q"
		break
	elsif input == "1"
		puts "What is the name of the key?"
		key = gets.chomp.to_sym
		puts "What is the value?"
		value = gets.chomp
		client[key] = value
		puts "You have added \"#{key}\" to be \"#{client[key]}\"."
	elsif input == "2"
		puts client
		print client.keys
		puts "Which key would you like to update?"
		loop do
			key = gets.chomp.to_sym
			if !client.key?(key)
				puts "Please enter a valid key."
			else
				puts "What is the new value?"
				new_value = gets.chomp
				client[key] = new_value
				puts "You have modified the \"#{key}\" key to be \"#{client[key]}\"."
				break
			end
		end
	elsif input == "3"
		puts client.keys
		puts "Which key would you like to change?"
		loop do
			key = gets.chomp.to_sym
			if !client.key?(key)
				puts "Please enter a valid key."
			else
				puts "What is the new key?"
				new_key = gets.chomp.to_sym
				client[new_key] = client.delete key
				puts "You have modified the \"#{key}\" key to be \"#{new_key}\"."
				break
			end
		end
	elsif input == "4"
		puts client.keys
		puts "Which key would you like to delete?"
		loop do
			key = gets.chomp.to_sym
			if !client.key?(key)
				puts "Please enter a valid key."
			else 
				client.delete(key)
				puts "You have deleted the \"#{key}\" key."
				break
			end
		end
	elsif input == "5"
		puts client
	end
end

=begin

Pseudocode:

-create the hash

-ask questions/store key-values

6 loop options: q - quit, 1 - add value, 2 - update value, 3 - update key, 4 - delete key-value, 5 - display hash

q:
	if q - break
1:
	ask for key name (convert to symbol)
	ask for value
	stores key - value
2:
	display hash, keys
	ask for key
	ask for new value
	store new value
3:
	display keys
	ask for key
	ask for new key
	delete old key, store new key
4:
	display keys
	ask for key
	delete key
5:
	display hash

end loop
	
=end