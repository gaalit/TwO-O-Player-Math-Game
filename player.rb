class Player
  attr_accessor :name, :lives

#at start of game
  def initialize(name)
    @name = name
    @lives = 3
  end

  def update_life
    @lives -= 1
  end

   
end


  # 1. Class Player:
  #  State: Storing current player && lives (@name, @lives)

  #  - to_Initialize:
  #    1. player1 or player2
  #    2. lives (start at 3)