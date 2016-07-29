class Hangman
	attr_reader :solution_array, :game_result, :game_valid, :guess_array
	attr_accessor :game_array, :counter, :guess, :repeat_guess

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
	end

	def update_char_array
		if @solution_array.count(@guess) > 1
			duplicate_letter
		else
			index = @solution_array.index(@guess)
			@game_array[index] = @solution_array[index]
			@game_array
		end
	end

	# def duplicate_letter
	# 	@duplicate_array = @solution_array
	# 	total_duplicates = @solution_array.count(@guess)
	# 	duplicate_counter = 0
	# 	while duplicate_counter < total_duplicates
	# 		update_char_array(@guess)
	# 		update_duplicates(@guess)
	# 	# if duplicate, reruns update_game_array with new index
	# 	# take solution array
	# 	# @duplicate_counter
	# 	# Array#select! {|item| block} > ary
	# end

	def update_game_array
		if @solution_array.index(@guess) != nil
			update_char_array
		else
			@game_array
		end
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
	
	def update_guess_list
		@guess_array << @guess
	end
	
	def add_guess_count
		if @solution_array.index(@guess) == nil && !@repeat_guess
			@counter += 1
		else
			@counter
		end
	end

	def is_game_over
		if @counter == @solution_array.length
			@game_valid = false
		end
	end

	def end_of_game
		if @game_result
			puts "Congratulations on winning the game!"
			puts "The final solution was \"#{@solution_array.join}\"."
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

# hangman = Hangman.new("hangman")
# p hangman.game_array.join
# hangman.update_game_array('h')
# p hangman.game_array.join
# hangman.update_game_array('x')
# p hangman.game_array.join
# hangman.game_array = ['h','a','n','g','m','a','_']
# p hangman.did_player_win
# hangman.add_guess_count('h')
# p hangman.counter
# hangman.add_guess_count('x')
# p hangman.counter
# hangman.counter = 7
# hangman.is_game_over
# p hangman.game_valid

require 'io/console'
puts "Input a word or phrase, and press 'Enter': "
solution = STDIN.noecho(&:gets).chomp

hangman = Hangman.new(solution)
until (hangman.game_result || !hangman.game_valid)
	hangman.repeat_guess = false
	puts "Guess a letter: "
	hangman.guess = gets.chomp.downcase
	hangman.update_game_array
	p hangman.game_array
	hangman.did_player_win
	hangman.was_guess_repeat
	hangman.update_guess_list
	hangman.add_guess_count
	p hangman.counter
	hangman.is_game_over
end
hangman.end_of_game

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
