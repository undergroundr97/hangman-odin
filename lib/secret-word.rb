class SecretWord
  def initialize
    all_words = File.read('lib/words.txt')
     useful_words = all_words.split(' ').select{|word| word.length >= 5 && word.length <= 12}
     @secret_word = useful_words.sample
  end
  def get_secret_word
    @secret_word
  end
  def get_secret_word_length
    @secret_word.length
  end
end
