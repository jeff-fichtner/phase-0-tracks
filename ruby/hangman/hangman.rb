# game class

class Hangman
	attr_reader :solution, :counter
	attr_accessor :guess, :guess_array

	def initialize solution
		@solution = solution.downcase.split('')
		@counter = 0
		@guess = String.new
		@guess_array = Array.new
	end

	def is_game_over
		if @counter == @solution.length
			true
		end
	end

	def add_guess_count
		if @solution.index(@guess) == nil && was_guess_repeat == true
			@counter += 1
		end
	end

	def update_guess_array
		@guess_array << @guess
	end

	def did_player_win
		if @solution == create_game_array
			true
		end
	end

	def create_game_array
		game_array = generate_empty_array
		@guess_array.each do |char|
			puts "currently iterating: #{char}"
			if @solution.index(char) != nil
				puts "#{char} is in solution"
				if @solution.count(char) > 1
					puts "#{char} is a duplicate"
					# duplicate_letter(game_array, char)
					# update game array
				else
					puts "#{char} isn't a duplicate"
		# 			index = @solution.index(char)
		# 			game_array[index] = @solution[index]
		# 			game_array
		# update game array
				end
			end
		end
	end

	def display_remaining_turns
		turns_left = @solution.length - @counter
		if is_game_over == true
			# shh, the end is nigh!
		elsif turns_left == 1
			puts "You have #{turns_left} turn left."
		else
			puts "You have #{turns_left} turns left."
		end
	end

	# end of game

	def end_of_game
		if did_player_win == true
			puts "Congratulations on winning the game!"
			puts "The final solution was in fact \"#{@solution.join}\"."
		else
			puts "Loser!"
			puts "The correct solution was \"#{@solution.join}\"."
			print "You made these poor choices: "
			puts @guess_array.uniq.join(", ")
			puts "What were you thinking?"
			puts "Oh well. Better luck next time."
		end
	end


	private

	def was_guess_repeat
		if @guess_array.index(@guess) != nil
			true
		end
	end

	def generate_empty_array
		game_array = Array.new
		i = 0
		while i < @solution.length 
			game_array << '_'
			i += 1
		end
		game_array
	end

	def duplicate_letter game_array, current_char
		duplicate_indices = @solution.each_index.select {|char| @solution[char] == current_char}
		duplicate_indices.each {|index| game_array[index] = @solution[index]}
		game_array
	end
end


# test code

hangman = Hangman.new('hello')
hangman.guess_array = ['e','h','x','l']
hangman.create_game_array

# driver code

# require 'io/console'
# puts "Input a word or phrase, and press 'Enter': "
# solution = STDIN.noecho(&:gets).chomp
# hangman = Hangman.new(solution)

# until hangman.is_game_over == true
	
# 	puts "Guess a letter: "
# 	hangman.guess = gets.chomp.downcase 
# 	hangman.add_guess_count
# 	hangman.update_guess_array
	
# 	if hangman.did_player_win == true
# 		break
# 	else
# 		game_array = hangman.create_game_array
# 		p game_array
# 		hangman.display_remaining_turns
# 	end

# end
# hangman.end_of_game