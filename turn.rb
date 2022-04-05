class Turn
  def initialize(player)
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @solution = @first_number + @second_number
    @answer = nil
    @player = player
  end

  def display_question
    puts "It is #{@player.name}'s turn"
    puts "What does #{@first_number} plus #{@second_number} equal?"
  end
  
  def validate(input)
    if @solution != input 
      puts "Seriously? No!"
      @player.lives -= 1
    else
      puts "Way to go!"
    end
  end

end

# if @solution != input && @player1.current_turn == true
#   @player1.lives -= 1
#   puts "Seriously? No!"
# elsif @solution != input && @player2.current_turn == true
#   @player2.lives -= 1
#   puts "Seriously? No!"