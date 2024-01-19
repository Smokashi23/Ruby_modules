class WordGuessGame
  def initialize
    @list_of_words = ["apple", "orange", "mango", "grapes", "banana"]
    @my_secret_word = @list_of_words.sample
    @board = Array.new(@my_secret_word.size) { "_" }
    @lives = 5
  end

  def play
    puts "Welcome to the Word Guessing Game!"
    puts "Try to guess the word. It could be anything!"

    while @lives > 0 && @board.include?("_")
      display_status
      print "Please guess a letter: "
      guess = gets.chomp.downcase
      check_guess(guess)
    end

    display_result
  end

  private

  def display_status
    puts "You have #{@lives} lives left!"
    puts "Current board: #{@board.join(" ")}"
  end

  def check_guess(guess)
    if @my_secret_word.include?(guess)
      update_board(guess)
    else
      @lives -= 1
      puts "The word doesn't include #{guess}"
      puts "Sorry, you have #{@lives} lives left!" if @lives > 0
    end
  end

  def update_board(guess)
    @my_secret_word.chars.each_with_index do |ch, ind|
      @board[ind] = ch if ch == guess
    end
  end

  def display_result
    if @lives.zero?
      puts "Sorry! You failed the game. The word was #{@my_secret_word}."
    else
      puts "Congratulations! You guessed the word: #{@my_secret_word}"
    end
  end
end

# Start the game
WordGuessGame.new.play
