# main.rb
require_relative 'player'
require_relative 'game'
require_relative 'question'

game = Game.new
game.game_loop
