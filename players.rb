
class Player
  # "Keep track of the lives of players"
  attr_accessor :lives 

  def initialize(n)
    @name = n
    @lives = 3
  end

  def killALife
    @lives -= 1
  end

  def getName
    @name
  end

  def dead?
    @lives == 0
  end

  def new_question
    new_question = Questions.new
    new_question.make_question
    puts "> "
    answer = $stdin.gets.chomp.to_i

    if answer == new_question.answer
      puts "You GENIUS!"
    else 
      puts "You SUCK!!!!"
      killALife
    end
  end
end