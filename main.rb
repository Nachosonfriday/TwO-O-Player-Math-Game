# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './player'
require './game'
require './turn'

puts "Would you like to play a game?"

game = Game.new

game.run_game
