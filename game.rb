class Game
    def initialize
      @player1 = Player.new(1)
      @player2 = Player.new(2)
      @current_player = @player1
    end
  
    def game_over?
      @player1.lost_all_lives? || @player2.lost_all_lives?
    end
  
    def switch_player
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
  
    def display_scores
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
  
    def game_loop
      until game_over?
        question = Question.new
        puts "Player #{@current_player.player_number}: #{question}"
        print "> "
        answer = gets.chomp.to_i
  
        if question.correct_answer?(answer)
          puts "Player #{@current_player.player_number}: YES! You are correct."
          @current_player.correct_answer
        else
          puts "Player #{@current_player.player_number}: Seriously? No!"
          @current_player.decrease_life
        end
  
        display_scores
        puts "----- NEW TURN -----" unless game_over?
        switch_player
      end
  
      winner = @player1.lost_all_lives? ? @player2 : @player1
      puts "Player #{winner.player_number} wins with a score of #{winner.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end