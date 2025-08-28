#!/usr/bin/env ruby
# frozen_string_literal: true

# Chutes and Ladders Game - Main Entry Point
# This file now serves as a legacy entry point
# For the new structure, use main.rb instead

# Add the lib directory to the load path
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

# Require all the necessary files
require 'config'
require 'player'
require 'game_board'
require 'dice'
require 'game'

# Main game execution
if __FILE__ == $0
  puts "🎯 Starting Chutes and Ladders..."
  puts "Note: Consider using main.rb for the new file structure"
  
  # Create and start the game
  game = Game.new
  game.play
end
