class Player
    attr_reader :player_number, :lives, :score
  
    def initialize(player_number)
      @player_number = player_number
      @lives = 3
      @score = 0
    end
  
    def decrease_life
      @lives -= 1
    end
  
    def correct_answer
      @score += 1
    end
  
    def lost_all_lives?
      @lives <= 0
    end
  end