# GameBoard class for Chutes and Ladders game
# Manages the game board layout and special square logic

class GameBoard
  def initialize
    @chutes_and_ladders = GameConfig::CHUTES_AND_LADDERS
  end
  
  def special_square?(position)
    @chutes_and_ladders.key?(position)
  end
  
  def get_destination(position)
    @chutes_and_ladders[position]
  end
  
  def is_ladder?(position)
    return false unless special_square?(position)
    @chutes_and_ladders[position] > position
  end
  
  def is_chute?(position)
    return false unless special_square?(position)
    @chutes_and_ladders[position] < position
  end
end
