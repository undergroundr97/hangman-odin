require_relative 'lib/secret-word'
require 'json'

def hangman
  puts "WELCOME TO HANGMAN!"
  puts "You you like to load a file game? (Y/N)"
  choice = gets.chomp.downcase
  if choice == 'y'
    load_game
  else
    start_new_game
  end
end

  

def start_new_game
  secret = SecretWord.new
   secret.get_secret_word
   secret_word = secret.get_secret_word.split('')
  
  secret_array = Array.new(secret.get_secret_word_length, '_')
  max_tentatives = 7
  tentatives = 0
  guesses = []
  alphabet = ('a'..'z').to_a
  puts "Starting a new game!"
  puts "Your word has #{secret.get_secret_word_length} letters!"
  puts secret_array.join(' ')
  while tentatives < max_tentatives
    puts "Make a guess! You have #{max_tentatives - tentatives} tentatives left!"
    guess = gets.chomp.downcase
    if guess == 'save'
      puts "Saving the game!"
      save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
    end

    while !alphabet.include?(guess) || guess.length >= 2 
      puts "Invalid guess! Please type a letter"
      guess = gets.chomp.downcase
      if guess == 'save'
        puts "Saving the game!"
        save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
      end
    end
    while guesses.include?(guess)
      puts "You've already tried this guess: #{guess}, please type another!"
      guess = gets.chomp.downcase
      if guess == 'save'
        puts "Saving the game!"
        save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
      end
      while !alphabet.include?(guess) || guess.length >= 2 
        puts "Invalid guess! Please type a letter"
        guess = gets.chomp.downcase
        if guess == 'save'
          puts "Saving the game!"
          save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
        end
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

def save_game(secret_word, secret_array,guesses, tentatives, max_tentatives)
  current_game = {
    max_tentatives: max_tentatives,
    tentatives: tentatives,
    secret_array: secret_array,
    guesses: guesses,
    secret_word: secret_word
  }
  File.open('hangman_save.json', 'w') do |file|
    JSON.dump(current_game, file)
  end
end

def load_game
  if File.exist?('hangman_save.json')
    file = File.read('hangman_save.json')
    saved_game = JSON.load(file)

     secret_word = saved_game['secret_word']
     secret_array = saved_game['secret_array']
     tentatives = saved_game['tentatives']
     max_tentatives = saved_game['max_tentatives']
     guesses = saved_game['guesses']
     alphabet = ('a'..'z').to_a


    puts "Loaded!"
    puts "Your word has #{secret_array.length} letters!"
    puts "#{secret_array.join(' ')}"
    while tentatives < max_tentatives
      puts "Make a guess! You have #{max_tentatives - tentatives} tentatives left!"
      guess = gets.chomp.downcase
      if guess == 'save'
        puts "Saving the game!"
        save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
      end
  
      while !alphabet.include?(guess) || guess.length >= 2 
        puts "Invalid guess! Please type a letter"
        guess = gets.chomp.downcase
        if guess == 'save'
          puts "Saving the game!"
          save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
        end
      end
      while guesses.include?(guess)
        puts "You've already tried this guess: #{guess}, please type another!"
        puts "#{guesses.join(', ')}"
        guess = gets.chomp.downcase
        if guess == 'save'
          puts "Saving the game!"
          save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
        end
        while !alphabet.include?(guess) || guess.length >= 2 
          puts "Invalid guess! Please type a letter"
          guess = gets.chomp.downcase
          if guess == 'save'
            puts "Saving the game!"
            save_game(secret_word, secret_array,guesses,tentatives, max_tentatives)
          end
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
        puts "The secret word was #{secret_word.join('').upcase}!"
        break
      elsif secret_array.join('') == secret_word.join('')
        puts "You got it!! the word was #{secret_word.join('').upcase}!"
        break
      end
    end
  end
end

hangman
