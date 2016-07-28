class Hangman
	attr_reader :solution, :game_array

	def initialize solution
		@solution = solution.downcase.split('')
		@game_array = Array.new
		@solution.each { |x| @game_array << '_' }
	end

	def update_char_array index
	end

	def verify_guess game_array
	end

	def verify_win game_array
	end

	def add_guess_count guess
	end

	def verify_game_count
	end

	def finish_game result
	end
end

hangman = Hangman.new("hangman")
p hangman.game_array


=begin 

Class: Hangman

	initialize
		- solution
		- empty 'game' array with length of solution ['_','_','_','_']

	Create character array from input:
		Input: solution - word or phrase
		Separate solution into array of characters
		Output: 'solution' array

	Add to 'game' array:
		Input: index of correct letter
		Overwrite value in 'game' array with corresponding value in 'solution' array
		Output: updated 'game' array

	Verify guess:
		If guess is found inside 'solution' array
			Run 'add to game array' method
			print 'game' array
			output: updated 'game' array
		Else if guess isn't found inside 'solution' array
			print 'game' array
			opt message
		End if

	Verify winning solution:
		If 'solution' array matches 'game' array
			End program, return 'win'
		Else
			Keep running program
		End if

	Add guess count:
		If guess is right
			no count
		If guess is wrong
			Add one to count
		End if

	Verify game count:
		If number of guesses is less than length of solution
			Initiate another guess
		Else
			End program, return 'loss'
		End if

	Game finish (print)
		If win
			Print winning message
			Print full solution
			Play again?
		If loss
			Print losing message
			Print full solution
			Play again?
		End if

End class Hangman

---------------

Solution = input (possibly without displaying)
Initialize game with solution input

Start guessing loop
	Run 'Create character array from input' method
	Prompt guess
	Run 'Verify letter' method (update array)
	Run 'Verify winning solution' method
		If 'win'
			Break loop
		Else
			Run 'add guess count' method
			Run 'verify game count' method
				If 'loss'
					Break loop
				Else
					Guess again
				End if
		End if
End loop

Print winning or losing results

-------
=end
