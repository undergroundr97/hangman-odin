require_relative 'lib/secret-word'


def hangman
  secret = SecretWord.new
  p secret.get_secret_word
  p secret_word = secret.get_secret_word.split('')
  
  secret_array = Array.new(secret.get_secret_word_length, '_')
  max_tentatives = 7
  tentatives = 0
  guesses = []
  alphabet = ('a'..'z').to_a
  puts "Welcome to hangman!"
  puts "Your word has #{secret.get_secret_word_length} letters!"
  puts secret_array.join(' ')
  while tentatives < max_tentatives
    puts "Make a guess! You have #{max_tentatives - tentatives} tentatives left!"
    guess = gets.chomp.downcase
    while !alphabet.include?(guess) || guess.length >= 2 
      puts "Invalid guess! Please type a letter"
      guess = gets.chomp.downcase
    end
    while guesses.include?(guess)
      puts "You've already tried this guess: #{guess}, please type another!"
      guess = gets.chomp.downcase
      while !alphabet.include?(guess) || guess.length >= 2 
        puts "Invalid guess! Please type a letter"
        guess = gets.chomp.downcase
      end
    end
    if secret_word.include?(guess)
      tentatives += 0
      secret_word.each_with_index do |letter, i|
        secret_array.each do
          if secret_word[i] == guess
            secret_array[i] = letter
          end
        end
      end
      puts "You guessed correctly!"
      puts secret_array.join(' ')
      guesses << guess
      if guesses.length >= 1
        puts "Current guesses: #{guesses.join(', ')}"
      end
    else
      puts "Your guess was wrong!"
      puts secret_array.join(' ')
      guesses << guess
      tentatives += 1
      if guesses.length >= 1
        puts "Current guesses: #{guesses.join(', ')}"
      end
    end
    if tentatives == max_tentatives
      puts "You are hanged! No more chances!"
      puts "The secret word was #{secret.get_secret_word.upcase}!"
      break
    elsif secret_array.join('') == secret.get_secret_word
      puts "You got it!! the word was #{secret.get_secret_word.upcase}!"
      break
    end

  end

end

hangman