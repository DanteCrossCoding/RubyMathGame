require './player'

class Game
  attr_reader :players, :current_player, :round
#generates playes and sets default first player to player in array position 0
  def initialize(p1, p2)
    @players = [p1, p2]
    @current_player = @players[0]
    
  end

#manages method for removing one life on wrong answer
  def lose_life
    puts "Sorry, that is the wrong answer!"
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{current_player.name} loses! Game Over!"
    end
  end
# method showing lives remaining
  def show_lives
    puts "Lives remaining: #{@players[0].name}: #{@players[0].life}/3 - #{@players[1].name}: #{@players[1].life}/3"
  end
# method which switches between players each round
  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end