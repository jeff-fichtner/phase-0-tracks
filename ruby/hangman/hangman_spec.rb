require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("hangman") }

  it "adds to the game array" do
    expect(hangman.update_char_array(1)).to eq ['_','a','_','_','_','_','_']
  end

  it "verifies a guess" do
    expect(hangman.verify_guess('h')).to eq ['h','_','_','_','_','_','_']
  end

  it "verifies a guess" do
    expect(hangman.verify_guess('x')).to eq ['_','_','_','_','_','_','_']
  end

  it "verifies a winning solution" do
    expect(hangman.verify_win(['h','a','n','g','m','a','n'])).to eq true
  end

  it "verifies a winning solution" do
    expect(hangman.verify_win(['h','a','n','g','m','a','_'])).to eq nil
  end

  it "adds to game count" do
    expect(hangman.add_guess_count('h')).to eq 0
  end

  it "adds to game count" do
    expect(hangman.add_guess_count('x')).to eq 1
  end

  it "verifies game count" do
    expect(hangman.verify_game_count(7)).to eq true
  end
end