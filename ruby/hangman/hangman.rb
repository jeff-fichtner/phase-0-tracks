class Hangman
	attr_reader :solution_array, :game_result, :game_valid
	attr_accessor :game_array, :counter

	def initialize solution
		@solution_array = solution.downcase.split('')
		@game_result = false
		@game_valid = true
		@counter = 0
		@game_array = Array.new
		@solution_array.each { |x| @game_array << '_' }
	end

	def update_char_array index
		@game_array[index] = @solution_array[index]
		@game_array
	end

	def verify_guess guess
		if @solution_array.index(guess) != nil
			update_char_array(@solution_array.index(guess))
		else
			@game_array
		end
	end

	def verify_win
		if @solution_array == @game_array
			@game_result = true
		end
	end

	def add_guess_count guess
		if @solution_array.index(guess) == nil
			@counter += 1
		else
			@counter
		end
	end

	def verify_game_count
		if @counter == @solution_array.length
			@game_valid = false
		end
	end

	def finish_game
		if @game_result
			puts "Congratulations on winning the game!"
			puts "The final solution was #{@solution_array.join}."
		else
			puts "Sucks to lose."
			puts "The correct solution was #{@solution_array.join}."
			puts "Better luck next time."
		end
	end
end

# hangman = Hangman.new("hangman")
# p hangman.game_array.join
# hangman.verify_guess('h')
# p hangman.game_array.join
# hangman.verify_guess('x')
# p hangman.game_array.join
# hangman.game_array = ['h','a','n','g','m','a','_']
# p hangman.verify_win
# hangman.add_guess_count('h')
# p hangman.counter
# hangman.add_guess_count('x')
# p hangman.counter
# hangman.counter = 7
# hangman.verify_game_count
# p hangman.game_valid

puts "Input a word or phrase:"
solution = gets.chomp

hangman = Hangman.new(solution)
until (hangman.game_result || !hangman.game_valid)
	puts "Guess a letter:"
	guess = gets.chomp.downcase
	hangman.verify_guess(guess)
	p hangman.game_array
	hangman.verify_win
	hangman.add_guess_count(guess)
	p hangman.counter
	hangman.verify_game_count
end
hangman.finish_game

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
	Prompt guess
	Run 'Verify guess' method (update array)
	Run 'Verify win' method
		If 'win'
			Update win variable
		End if
	Run 'add guess count' method
	Run 'verify game count' method
		If 'loss'
			update loss variable
		End if
	Game standing method
		If 'win' or 'loss'
			End loop
		Else
			Repeat guessing program
		End if
End loop

Print winning or losing results

-------
=end
