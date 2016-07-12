#hamster interview

puts "What is the hamster's name?"
name = gets.chomp.downcase
name = name.capitalize
if name.empty?
	name = "Lil' buddy"
end

while true
	puts "How loud is the hamster, from 1-10?"
	volume = gets.chomp.to_i
	if volume > 10 || volume < 1
		puts "Please respond with a number between 1-10."
		redo
	else
		break
	end
end

puts "What color is the hamster's fur?"
fur = gets.chomp.downcase

while true
	puts "Is this hamster a good candidate for adoption?"
	candidate = gets.chomp.downcase
	if candidate == "yes"
		good_candidate = true
		break
	elsif candidate == "no"
		good_candidate = false
		break
	else
		puts "Please respond with 'yes' or 'no'."
	end
end

puts "What is the estimated age of the hamster?"
age = gets.chomp

if age.empty?
	age = nil
end

puts ""
puts "The hamster's name is \"#{name}\"."
puts "The hamster is a volume factor of #{volume} of 10."
puts "The hamster's fur is #{fur}."
if good_candidate
	puts "The hamster is a good candidate."
else
	puts "The hamster is a bad candidate."
end
if age == nil
	puts "The hamster does not have an estimated age."
else
	puts "The hamster is approximately #{age} years old."
end
puts ""
puts "Enjoy your hamster!"