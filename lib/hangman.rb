class Hangman
  # Definir os estágios do desenho da forca
  STAGES = [
    '''
     -----
     |   |
         |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
     |   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    /    |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    / \\  |
         |
       ---
    '''
  ]
  
  # Inicializa o jogo
  def initialize
    @incorrect_guesses = 0
  end

  # Exibe a forca com base no número de tentativas erradas
  def display
    puts STAGES[@incorrect_guesses]
  end

  # Incrementa o número de tentativas erradas
  def incorrect_guess
    @incorrect_guesses += 1 if @incorrect_guesses < STAGES.length - 1
  end
end

# Exemplo de uso:

# Criar um novo objeto Hangman
game = Hangman.new

# Exibir a forca inicial (sem tentativas erradas)
game.display

# Simular algumas tentativas erradas e mostrar o progresso
game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display

class Hangman
  # Definir os estágios do desenho da forca
  STAGES = [
    '''
     -----
     |   |
         |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
     |   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    /    |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    / \\  |
         |
       ---
    '''
  ]
  
  # Inicializa o jogo
  def initialize
    @incorrect_guesses = 0
  end

  # Exibe a forca com base no número de tentativas erradas
  def display
    puts STAGES[@incorrect_guesses]
  end

  # Incrementa o número de tentativas erradas
  def incorrect_guess
    @incorrect_guesses += 1 if @incorrect_guesses < STAGES.length - 1
  end
end

# Exemplo de uso:

# Criar um novo objeto Hangman
game = Hangman.new

# Exibir a forca inicial (sem tentativas erradas)
game.display

# Simular algumas tentativas erradas e mostrar o progresso
game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display
class Hangman
  # Definir os estágios do desenho da forca
  STAGES = [
    '''
     -----
     |   |
         |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
     |   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    /    |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    / \\  |
         |
       ---
    '''
  ]
  
  # Inicializa o jogo
  def initialize
    @incorrect_guesses = 0
  end

  # Exibe a forca com base no número de tentativas erradas
  def display
    puts STAGES[@incorrect_guesses]
  end

  # Incrementa o número de tentativas erradas
  def incorrect_guess
    @incorrect_guesses += 1 if @incorrect_guesses < STAGES.length - 1
  end
end

# Exemplo de uso:

# Criar um novo objeto Hangman
game = Hangman.new

# Exibir a forca inicial (sem tentativas erradas)
game.display

# Simular algumas tentativas erradas e mostrar o progresso
game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display
class Hangman
  # Definir os estágios do desenho da forca
  STAGES = [
    '''
     -----
     |   |
         |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
         |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
     |   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|   |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
         |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    /    |
         |
       ---
    ''',
    '''
     -----
     |   |
     O   |
    /|\\  |
    / \\  |
         |
       ---
    '''
  ]
  
  # Inicializa o jogo
  def initialize
    @incorrect_guesses = 0
  end

  # Exibe a forca com base no número de tentativas erradas
  def display
    puts STAGES[@incorrect_guesses]
  end

  # Incrementa o número de tentativas erradas
  def incorrect_guess
    @incorrect_guesses += 1 if @incorrect_guesses < STAGES.length - 1
  end
end

# Exemplo de uso:

# Criar um novo objeto Hangman
game = Hangman.new

# Exibir a forca inicial (sem tentativas erradas)
game.display

# Simular algumas tentativas erradas e mostrar o progresso
game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display

game.incorrect_guess
game.display
