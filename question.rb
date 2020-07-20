class Questions
  attr_accessor :answer :question

  def initialize
    @int1 = rand(1..20)
    @int2 = rand(1..20)
    @answer = @int1 * @int2
    @question = "What is #{@int1} * #{@int2} equal to?"
  end
end
