#!/usr/bin/env ruby
# frozen_string_literal: true

# Main entry point for Chutes and Ladders Game
# This file requires all the necessary classes and starts the game

# Require all the necessary files using relative paths
require_relative 'config'
require_relative 'lib/player'
require_relative 'lib/game_board'
require_relative 'lib/dice'
require_relative 'lib/game'

# Main game execution
if __FILE__ == $0
  puts "🎯 Starting Chutes and Ladders..."
  
  # Create and start the game
  game = Game.new
  game.play
end
