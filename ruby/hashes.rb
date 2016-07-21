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

puts "Welcome to the client form."

puts "What is the client's name?"
name = gets.chomp

puts "What is the client's address?"
address = gets.chomp

number = int "What is the client's phone number?"

modern = ask "Does the client like modern design? (yes/no)"

vintage = ask "Does the client like vintage design? (yes/no)"

puts "You have completed the form."

loop do
	puts "To add a value, type \"1\". To update a value, type \"2\". To update a key, type \"3\". To see the entire hash, type \"4\". To quit, type \"q\"."
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
		puts client.keys
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
		#insert update key
	elsif input == "4"
		puts client
	end
end