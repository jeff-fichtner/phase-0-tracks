require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("hangman") }

 	describe "adds to the game array" do

  	it "is given a duplicate letter" do
	  	hangman.instance_variable_set(:@guess, "a")
	    hangman.update_game_array
	    expect(hangman.game_array).to eq ['_','a','_','_','_','a','_']
	  end

	  it "is given a non-duplicate letter" do
	  	hangman.instance_variable_set(:@guess, "h")
	  	hangman.update_game_array
	  	expect(hangman.game_array).to eq ['h','_','_','_','_','_','_']
	  end

  end

  it "checks if player won" do
  	hangman.instance_variable_set(:@game_array, ['h','a','n','g','m','a','n'])
  	expect(hangman.did_player_win).to eq true
  end

  it "verifies a guess wasn't a repeat" do
  	hangman.instance_variable_set(:@guess, "h")
  	hangman.instance_variable_set(:@guess_array, ["h"])
    expect(hangman.was_guess_repeat).to eq true
  end

  it "updates guess array" do
  	hangman.instance_variable_set(:@guess, "a")
    hangman.update_guess_array
    expect(hangman.guess_array).to eq ['a']
	 end

  describe "adds to guess count" do
  	
  	it "is correct" do
  		hangman.instance_variable_set(:@guess, "a")
  		hangman.add_guess_count
  		expect(hangman.counter).to eq 0
  	end

  	it "isn't correct but is a repeat" do
  		hangman.instance_variable_set(:@guess, "x")
  		hangman.instance_variable_set(:@repeat_guess, true)
  		hangman.add_guess_count
  		expect(hangman.counter).to eq 0
  	end

  	it "isn't correct or a repeat" do
  		hangman.instance_variable_set(:@guess, "x")
  		hangman.add_guess_count
  		expect(hangman.counter).to eq 1
  	end

  end

  it "verifies total guess attempts" do
  	hangman.instance_variable_set(:@counter, 7)
  	hangman.is_game_over
  	expect(hangman.game_valid).to eq false
  end
end