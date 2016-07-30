require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("hangman") }

  before do
    @guess = "n"
    @guess_array = ["n"]
  end

  it "updates @game_array" do
    expect(hangman.update_game_array).to eq ['_','_','n','_','_','_','n']
  end

  it "duplicates letter" do
    expect(hangman.duplicate_letter).to eq ['_','_','n','_','_','_','n']
  end

  it "verifies if a guess was repeated" do
    expect(hangman.was_guess_repeat).to eq true
  end

  it "adds current guess to list of all guesses" do
    expect(hangman.update_guess_array).to eq ["n","n"]
  end
end

# describe Hangman do
#   let(:hangman) { Hangman.new("hangman") }
  
#   it "verifies if player won" do
#     expect(hangman.did_player_win).to eq nil
#   end

#   it "adds to counter if guess was incorrect" do
#     expect(hangman.add_guess_count).to eq 1
#   end

#   it "verifies if there are still turns left" do
#     expect(hangman.is_game_over).to eq nil
#   end

#   it "displays the remaining turns" do
#     expect(hangman.display_remaining_turns).to eq nil
#   end

#   it "prints the end result" do
#     expect(hangman.end_of_game).to eq nil
#   end
# end