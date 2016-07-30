require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("hangman") }

 	context "adds to the game array" do

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

  # it "verifies a winning solution" do
  #   expect(hangman.verify_win(['h','a','n','g','m','a','n'])).to eq true
  # end

  # it "verifies a winning solution" do
  #   expect(hangman.verify_win(['h','a','n','g','m','a','_'])).to eq nil
  # end

  # it "adds to game count" do
  #   expect(hangman.add_guess_count('h')).to eq 0
  # end

  # it "adds to game count" do
  #   expect(hangman.add_guess_count('x')).to eq 1
  # end

  # it "verifies game count" do
  #   expect(hangman.verify_game_count(7)).to eq true
  # end
end