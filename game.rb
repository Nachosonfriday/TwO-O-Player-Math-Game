class Game

  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    set_turn
  end

  def run_game
    run_turn(@player1)
    while !game_over?
      next_player = set_turn
      run_turn(next_player)
    end
  end

  def run_turn (player)
    turn = Turn.new(player)
    turn.display_question
    answer = gets.chomp.to_i
    turn.validate(answer)
  end

    # passes player to next player method
  def set_turn
    if @player1.current_turn == @player2.current_turn && !@player2.current_turn
      @player1.current_turn = true
      @player1
    elsif @player1.current_turn
      @player1.current_turn = false
      @player2.current_turn = true
      @player2
    elsif @player2.current_turn
      @player1.current_turn = true
      @player2.current_turn = false
      @player1
    end
  end

  def game_over?
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      puts "--- GAME OVER ---"
      puts "Good Bye!"
      true
    elsif @player2.lives == 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      puts "--- GAME OVER ---"
      puts "Good Bye!"
      true
    else 
      false
    end
  end

end