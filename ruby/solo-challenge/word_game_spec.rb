require_relative 'word_game'

describe WordGame do
	let(:word_game) { WordGame.new("unicorn")}

	it "stores the answer word on initialization" do
		expect(word_game.answer).to eq "unicorn"
	end

	it "displays the currently revealed letters in the answer" do 
		expect(word_game.display_current).to eq "_ _ _ _ _ _ _"
	end

	it "compares the correct guess with the answer" do
		expect(word_game.check("unicorn")).to eq true
	end

	it "discovers one letter, display currently revealed letters" do
		expect(word_game.check("u")).to eq false
		expect(word_game.display_current).to eq "u _ _ _ _ _ _"
	end

	it "discovers 3 letters, display currently revealed letters" do
		expect(word_game.check("u")).to eq false
		expect(word_game.check("n")).to eq false
		expect(word_game.check("c")).to eq false
		expect(word_game.display_current).to eq "u n _ c _ _ n"
	end

end
