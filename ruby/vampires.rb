#vampire interview

#methods:
#question method
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
#integer question method
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

#begin program

#initiate loop
puts "How many employees would you like to process?"
n_employees = gets.chomp.to_i
n = 0
while n < n_employees

	#data gathering
	puts "What is your name?"
	name = gets.chomp.downcase
	
	#converting name to bool
	if name == "drake cula" || name == "tu fang"
		vampire_name = true
	else
		vampire_name = false
	end

	#name detection bypass
	if vampire_name
		puts "Definitely a vampire."
	
	#continues with program as normal
	else
		age = int "How old are you?"
		birthyear = int "What year were you born?"
		likes_garlic = ask "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
		wants_insurance = ask "Would you like to enroll in the company’s health insurance? (yes/no)"



		#allergy loop
		puts "Please list any allergies you may have, pressing \"Enter\" in between. Type \"done\" when you're finished."
		while true
			allergy = gets.chomp.downcase
			if allergy == "sunshine"
				puts "Probably a vampire."
				break
			elsif allergy == "done"
				break
			end
		end

		#converting age to bool
		age_year = 2016 - birthyear
		if age_year == age
			age_is_correct = true
		else
			age_is_correct = false
		end

		#allergy detection bypass
		if allergy != "sunshine"
			#detection logic
			puts case
				when !age_is_correct && !likes_garlic && !wants_insurance
					"Almost certainly a vampire."
				when !age_is_correct && ( !likes_garlic || !wants_insurance )
					"Probably a vampire."
				when age_is_correct && ( likes_garlic || wants_insurance )
					"Probably not a vampire."
				else
					"Results inconclusive."	
			end
		end
	end

	#end loop
	n += 1
end

#just kidding
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."