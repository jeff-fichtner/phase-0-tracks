# application hash

client = {
}

# driver code

puts
puts "Welcome to the client form."
puts

puts "What is the client's name?"
puts "What is the client's address?"
#more q's

loop do
	puts "To add a value, type \"1\". To update a value, type \"2\". To update a key, type \"3\". To see the hash, type \"4\". To quit, type \"q\"."
	puts
	input = gets.chomp
	if input == "q"
		break
	elsif input == "1"
		puts
		puts "What is the name of the key?"
		puts
		key = gets.chomp.to_sym
		puts
		puts "What is the value?"
		puts
		value = gets.chomp
		client[key] = value
		puts
		puts "You have added \"#{key}\" to be \"#{client[key]}\"."
		puts
	elsif input == "2"
		puts
		puts client.keys
		puts
		puts "Which key would you like to update?"
		puts
		loop do
			key = gets.chomp.to_sym
			if !client.key?(key)
				puts
				puts "Please enter a valid key."
				puts
			else
				puts
				puts "What is the new value?"
				puts
				new_value = gets.chomp
				client[key] = new_value
				puts
				puts "You have modified the \"#{key}\" key to be \"#{client[key]}\"."
				puts
				break
			end
		end
	elsif input == "3"
		#insert update key
	elsif input == "4"
		puts
		puts client
		puts
	end
end
puts