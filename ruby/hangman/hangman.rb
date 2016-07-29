# game class

class Hangman
	attr_reader :solution_array, :game_result, :game_valid, :guess_array, :counter, :game_array
	attr_accessor :guess, :repeat_guess

	def initialize solution
		@solution_array = solution.downcase.split('')
		@game_result = false
		@game_valid = true
		@counter = 0
		@game_array = Array.new
		@solution_array.each { |x| @game_array << '_' }
		@guess = String.new
		@guess_array = Array.new
		@repeat_guess = false
		@duplicate_indices = Array.new
	end

	def update_game_array
		if @solution_array.index(@guess) != nil
			if @solution_array.count(@guess) > 1
				duplicate_letter
			else
				index = @solution_array.index(@guess)
				@game_array[index] = @solution_array[index]
				@game_array
			end
		end
	end

	def duplicate_letter
		@duplicate_indices = @solution_array.each_index.select {|char| @solution_array[char] == @guess}
		@duplicate_indices.each {|index| @game_array[index] = @solution_array[index]}
		@game_array
	end

	def did_player_win
		if @solution_array == @game_array
			@game_result = true
		end
	end
	
	def was_guess_repeat
		if @guess_array.index(@guess) != nil
			@repeat_guess = true
		end
	end
	
	def update_guess_array
		@guess_array << @guess
	end
	
	def add_guess_count
		if @solution_array.index(@guess) == nil && !@repeat_guess
			@counter += 1
		end
	end

	def is_game_over
		if @counter == @solution_array.length
			@game_valid = false
		end
	end

	def display_remaining_turns
		turns_left = @solution_array.length - @counter
		if !@game_valid
			# do nothing!
		elsif turns_left == 1
			puts "You have #{turns_left} turn left."
		else
			puts "You have #{turns_left} turns left."
		end
	end

	def end_of_game
		if @game_result
			puts "Congratulations on winning the game!"
			puts "The final solution was in fact \"#{@solution_array.join}\"."
		else
			puts "Loser!"
			puts "The correct solution was \"#{@solution_array.join}\"."
			print "You made these poor choices: "
			puts @guess_array.join(", ")
			puts "What were you thinking?"
			puts "Oh well. Better luck next time."
		end
	end
end

# driver code

require 'io/console'
puts "Input a word or phrase, and press 'Enter': "
solution = STDIN.noecho(&:gets).chomp

hangman = Hangman.new(solution)
until (hangman.game_result || !hangman.game_valid)
	hangman.repeat_guess = false
	puts "Guess a letter: "
	hangman.guess = gets.chomp.downcase
	hangman.update_game_array
	puts hangman.game_array.join(' ')
	hangman.did_player_win
	hangman.was_guess_repeat
	hangman.update_guess_array
	hangman.add_guess_count
	hangman.is_game_over
	hangman.display_remaining_turns
end
hangman.end_of_game



=begin pseudocode
---------------------

# game class

Class: Hangman

	initialize
		start counter
		create:
			solution_array - official correct answer, separated to characters
			game_result - game is lost (false) until won (true)
			game_valid - game is valid (true) until lost (false)
			guess_array - list of guesses
			counter - current guess attempt
			game_array - array updated with correct guesses/feedback array
			guess - current guess
			repeat_guess - not a repeat (false) until true, resets before every guess

	Update game_array:
		If guess is correct:
			If guess is duplicate
				Run duplicate letter update method
			Else
				Set game_array at index of correct guess eq to corresponding index of correct guess in solution_array
			End if
		End if

	Duplicate letter:
		Update duplicate_indices with indices in solution_array where object matches the guess
		For each index, set game_array at index of correct guess eq to corresponding index of correct guess in solution_array
		Clear duplicate_indices

	Update game result:
		If solution_array eq game_array
			Set game_result to eq true
		End if

	Verify repeat guess:
		If guess is contained in guess_array
			Set repeat_guess to true
		End if

	Update list of guesses:
		Add guess into guess_array

	Add guess count:
		If guess is wrong and isn't a repeat)
			Add one to count
		End if

	Verify game count:
		If number of guesses is less than length of solution
			Initiate another guess
		Else
			End program, return 'loss'
		End if

	Display remaining turns:
		Turns_left is eq to length of solution_array subtracted by guess attempts (counter)
		If game is finished
			Don't display anything
		Elsif turns_left == 1
			Display message (singular)
		Else
			Display message (plural)
		End if

	Game finish (print):
		If win
			Print winning message
			Print full solution
		If loss
			Print losing message
			Print full solution
		End if

---------------------

# driver code

Solution = input
Initialize game with solution

While the player still has turns and hasn't won already
	Set if it's a repeat guess to 'false'
	Prompt guess
	Save guess
	If guess is correct, update the game array
	Display the updated game array
	Check if the game is won (update game_result true/false)
	Check if guess was a repeat
	Add current guess to list of guesses
	Check if player is out of turns (update game_valid true/false)
	Display remaining turns in the game (or none if game is over)
End loop

Print winning or losing results

---------------------
=end