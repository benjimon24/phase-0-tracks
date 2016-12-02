#create a word game class
#accepts a word during initialization
#declare an attribute for the state of the game
#create a method for comparing user input with the word
#the same method will end the game if the user exceeds number of guesses
#create a method for displaying the current state of the word (with revealed letters)

class WordGame
	attr_reader :is_over

	def initialize(answer)

		@answer = answer

		@current = []
		answer.chars.each do |i|
			@current << "_" 
		end
		@guess_count = 0
		@maximum_guesses = answer.length - 2
		@is_over = false
		@repeated_words = []

		puts "Player 2: Please guess the word or a letter of the word. You have #{@maximum_guesses} guesses before you lose."
	end

	def display_current
		answer_string = ""
		@current.each do |char|
			answer_string << char + " "
		end
		answer_string.rstrip
	end

	def check(word)
		if word == @answer #if they guess correctly, end the game and tell them how many guesses they used
			@is_over = true
			@guess_count += 1
			puts "You won in #{@guess_count} guesses!"
			return true

		elsif @repeated_words.include?(word)
			puts "You already guessed this word or letter. Please try again."
			puts self.display_current

		elsif @answer.split("").include?(word) #if they guessed a correct letter, reveal that letter
			@answer.split("").each.with_index { |char, idx| @current[idx] = char if word == char }
			@guess_count += 1
			@repeated_words << word
			puts "You have #{@maximum_guesses - @guess_count} guesses left!"
			puts self.display_current

			# if !@current.include?("_") #if they revealed every letter, win the game - impossible with current ruleset
			# 	@is_over = true
			# 	@guess_count += 1
			# 	puts "You won in #{@guess_count} guesses!"
			# 	return true
			# end

		else
			@guess_count += 1
			@repeated_words << word
			puts "You have #{@maximum_guesses - @guess_count} guesses left!"
			puts self.display_current
		end

		if @guess_count == @maximum_guesses
			@is_over = true
			puts "You have lost the game! The correct answer was #{@answer}. Better luck next time!"
		end

		return false
	end
end

puts "Welcome to Hangman! Player 1: Please enter the word you would like the other player to guess."
guess_word = gets.chomp


puts "----------------------------------------------"
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
puts "Initializing..."
puts "----------------------------------------------"

hangman = WordGame.new(guess_word)

while !hangman.is_over
	guess = gets.chomp
	hangman.check(guess)
end