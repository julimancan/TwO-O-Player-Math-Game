
class Player
  # "Keep track of the lives of players"
  attr_accessor :lives

  def initialize 
    @lives = 3
  end

  def dead?
    @lives =< 0
  end
end