#vampire interview

#initiate loop
puts "How many employees would you like to process?"
n_employees = gets.chomp.to_i
n = 0
while n < n_employees

#data gathering
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthyear = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp

#calculate age
age_year = 2016 - birthyear

#boolean conversion methods
if age_year == age
	age_is_correct = true
else
	age_is_correct = false
end

if garlic == "yes"
	likes_garlic = true
else
	likes_garlic = false
end

if insurance == "yes"
	wants_insurance = true
else
	wants_insurance = false
end

if name == "Drake Cula" || name == "Tu Fang"
	vampire_name = true
else
	vampire_name = false
end

#detection
puts case
	when vampire_name
		"Definitely a vampire."
	when !age_is_correct && !likes_garlic && !wants_insurance
		"Almost certainly a vampire."
	when !age_is_correct && ( !likes_garlic || !wants_insurance )
		"Probably a vampire."
	when age_is_correct && ( likes_garlic || wants_insurance )
		"Probably not a vampire."
	else
		"Results inconclusive."	
end

#end loop
n += 1
end