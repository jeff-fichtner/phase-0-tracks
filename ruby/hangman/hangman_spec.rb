require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("hangman") }

  # is_game_over
  it "verifies game is over" do
  	hangman.instance_variable_set(:@counter, 7)
  	expect(hangman.is_game_over).to eq true
  end

  # add_guess_count
  describe "adds to guess count" do
  	
  	it "is correct" do
  		hangman.instance_variable_set(:@guess, "a")
  		expect(hangman.add_guess_count).to eq nil
  	end

  	it "isn't correct but is a repeat" do
  		hangman.instance_variable_set(:@guess, "x")
  		hangman.instance_variable_set(:@guess_array, ["x"])
  		expect(hangman.add_guess_count).to eq nil
  	end

  	it "isn't correct or a repeat" do
  		hangman.instance_variable_set(:@guess, "x")
  		expect(hangman.add_guess_count).to eq 1
  	end

  end

  # update_guess_array
	it "updates guess array" do
  	hangman.instance_variable_set(:@guess, "a")
    expect(hangman.update_guess_array).to eq ['a']
  end

  # did_player_win
  it "checks if player won" do
  	hangman.instance_variable_set(:@guess_array, ["h","a","n","g","m"])
  	expect(hangman.did_player_win).to eq true
  end

  # generate_game_array
 	describe "creates the game array" do

  	it "is given a duplicate letter" do
	  	hangman.instance_variable_set(:@guess, "a")
	  	hangman.update_guess_array
	    expect(hangman.generate_game_array).to eq ['_','a','_','_','_','a','_']
	  end

	  it "is given a non-duplicate letter" do
	  	hangman.instance_variable_set(:@guess, "h")
	  	hangman.update_guess_array
	  	expect(hangman.generate_game_array).to eq ['h','_','_','_','_','_','_']
	  end

  end


end