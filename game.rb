
class Game
  attr_reader :player1, :player2

  # keeps track of the game and whos turn it is
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start 
    puts "Welcome to your worst nightmare I hope you enjoy suffering"
    turn
  end
 
 def winner(player)
  puts "#{player.getName} wins with a score of #{player.lives}/3"
  puts "Thanks you for playing!"
  exit(0)
end

 def check_score
    if @player1.dead?
      winner(@player2)
    elsif @player2.dead?
      winner(@player1)
    end
  end

 def stats 
  puts "#{@player1.getName}: #{@player1.lives}/3 vs #{@player1.getName}:  #{@player2.lives}/3"
 end 

  def turn
    puts "#{@player1.getName}:"
    @player1.new_question
    check_score
    puts "#{@player2.getName}:"
    @player2.new_question
    check_score
    stats
    puts "<<<<<<<<<<<<<<<<<<<<<<<<<<<< New Turn >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    turn
  end  
end

