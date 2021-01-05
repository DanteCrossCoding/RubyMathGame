
require './player'
require './question'
require './game'

# allows users to set player names
puts "Enter name for player 1:"
name1 = gets.chomp.to_s
puts "Enter name for player 2:"
name2 = gets.chomp.to_s
player1 = Player.new(name1)
player2 = Player.new(name2)

# Where the game begins

game = Game.new(player1, player2)

while (game.players[0].life > 0 and game.players[1].life > 0)
  puts "Question:"
  print "#{game.current_player.name}: "
  question = Question.new
  print "#{question.math_question}"
  answer = question.answer

#accepts player answer
  input = gets.chomp.to_i

#checks to see if answer is correct and removes one life if not
  if (input != answer)
    game.lose_life
  end
#reports remaining lives
  game.show_lives

#changes to next player
  game.switch_player

end