require "./mathq"
require "./player"

class Game

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1
  end

  def switch
    if @current_player = @player_1
      @current_player = @player_2
    else @current_player = @player_1
    end
  end
  
  def start_match
    while @current_player.lives > 0 do
    puts  "\n------NEW TURN----------"
    @question = Mathq.new
    @question.show_question(@current_player.name)
    if !@question.correct_answer?(gets.chomp.to_i)
      @current_player.update_life
    end

      if @current_player.lives > 0
        
        puts " P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"

      switch
      else puts "\n-----GAME OVER ---- \n Goodbye!" 
    end

    end
  end
end
