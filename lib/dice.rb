# Dice class for Chutes and Ladders game
# Handles dice rolling functionality

class Dice
  def self.roll
    result = rand(GameConfig::MIN_DICE_ROLL..GameConfig::MAX_DICE_ROLL)
    puts "🎲 You rolled a #{result}!"
    result
  end
end
