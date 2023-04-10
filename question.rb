class Question
    def initialize
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @answer = @number1 + @number2
    end
  
    def correct_answer?(player_answer)
      player_answer == @answer
    end
  
    def to_s
      "What does #{@number1} plus #{@number2} equal?"
    end
  end