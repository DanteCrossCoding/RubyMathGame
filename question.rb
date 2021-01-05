class Question
  attr_reader :answer

  def initialize
    @answer = 0
  end
# generates random math question
  def math_question
    number = Random.new
    first_number = number.rand(100)
    second_number = number.rand(100)
    @answer = first_number + second_number
    print "What is #{first_number} + #{second_number}?"
  end 
end
