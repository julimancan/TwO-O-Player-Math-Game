class Questions
  attr_accessor :answer

  def initialize
    @int1 = rand(1..20)
    @int2 = rand(1..20)
  end
  
  def make_question
    puts "What is #{@int1} * #{@int2} equal to?"
  end
  
  def answer
    @int1 * @int2
  end
end
