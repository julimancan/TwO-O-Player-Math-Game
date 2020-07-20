
class Game
  attr_reader :player1, :player2

  def initialize
    puts "Player 1 what is your name?"
    p1 =  $stdin.gets.chomp.to_s
    @player1 = Player.new(p1)
    puts "Player 2 what is your name?"
    p2 =  $stdin.gets.chomp.to_s
    @player2 = Player.new(p2)
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

