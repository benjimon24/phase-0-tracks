#create a word game class
#accepts a word during initialization
#declare an attribute for the state of the game
#create a method for comparing user input with the word
#the same method will end the game if the user exceeds number of guesses
#create a method for displaying the current state of the word (with revealed letters)

class WordGame
  attr_reader :is_over, :current

  def initialize(answer)

    @answer = answer
    @current = '_ ' * answer.length
    @guess_count = 0
    @maximum_guesses = answer.length - 2
    @is_over = false
    @repeated_guesses = []

    puts "Player 2: Please guess a letter of the word. You have #{@maximum_guesses} guesses before you lose."
  end

  def check(guess)

    if @repeated_guesses.include?(guess) #checks if they already guessed that letter
      puts "You already guessed this letter. Please try again."
      
    elsif @answer.include?(guess) #if they guessed a correct letter, reveal that letter
      @answer.each_char.with_index { |c, i| @current[i] = c if guess == c }
      @repeated_guesses << guess
      puts "You have #{@maximum_guesses - @guess_count} guesses left!"

    else #do this if they guess the wrong letter
      @guess_count += 1
      @repeated_guesses << guess
      puts "You have #{@maximum_guesses - @guess_count} guesses left!"
    end


    puts @current
  end
  
  def game_over?
    if @guess_count == @maximum_guesses
      @is_over = true
      puts "You have lost the game! The correct answer was #{@answer}. Better luck next time!"
    elsif !@current.include?("_") #
      @is_over = true
      puts "You won with #{@maximum_guesses - @guess_count} chances left!"
    end
  end
end

puts "Welcome to Hangman! Player 1: Please enter the word you would like the other player to guess."
guess_word = gets.chomp

puts "\e[H\e[2J"

hangman = WordGame.new(guess_word)

while !hangman.is_over
  guess = gets.chomp
  hangman.check(guess)
  hangman.game_over?
end