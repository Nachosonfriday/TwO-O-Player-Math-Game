# Create Players Class
# Add instance variables @lives @current_turn
# Use accessor Method: attr_accessor to create both the READER & WRITER abilities

class Player

  attr_accessor :lives, :current_turn, :name

  def initialize(name)
    @name = name
    @lives = 3
    @current_turn = false
  end
end