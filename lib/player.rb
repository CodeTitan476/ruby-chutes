# Player class for Chutes and Ladders game
# Manages player state, position, and movement

class Player
  attr_reader :name, :position
  
  def initialize(name)
    @name = name
    @position = 0
  end
  
  def move(spaces)
    @position += spaces
    puts "#{@name} moved to position #{@position}"
  end
  
  def won?
    @position >= GameConfig::WINNING_POSITION
  end
  
  def reset_position
    @position = 0
  end
end
