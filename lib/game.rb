# Game class for Chutes and Ladders game
# Orchestrates the complete game flow and player turns

class Game
  def initialize(player_names = nil)
    @players = (player_names || GameConfig::PLAYER_NAMES).map { |name| Player.new(name) }
    @board = GameBoard.new
    @turn_number = 1
  end
  
  def play
    display_welcome_message
    display_rules
    
    loop do
      display_turn_header
      
      @players.each do |player|
        next if player.won?
        
        if take_turn(player)
          display_game_over
          return
        end
      end
      
      display_positions if GameConfig::SHOW_POSITIONS_AFTER_EACH_TURN
      @turn_number += 1
    end
  end
  
  private
  
  def display_welcome_message
    puts "\n🎮 Welcome to Chutes and Ladders! 🎮"
    puts "Players: #{@players.map(&:name).join(', ')}"
    puts "=" * 50
  end
  
  def display_rules
    puts "\n📋 Game Rules:"
    puts "• Roll a die to move forward"
    puts "• Land on ladders (🪜) to climb up"
    puts "• Land on chutes (🛝) to slide down"
    puts "• First to reach square #{GameConfig::WINNING_POSITION} exactly wins!"
    puts "• Rolling too high keeps you in place"
    puts "=" * 50
  end
  
  def display_turn_header
    return unless GameConfig::SHOW_TURN_NUMBERS
    puts "\n🔄 TURN #{@turn_number}"
    puts "-" * 30
  end
  
  def take_turn(player)
    puts "\n👤 #{player.name}'s turn (Position: #{player.position})"
    
    dice_roll = Dice.roll
    new_position = player.position + dice_roll
    
    if new_position > GameConfig::WINNING_POSITION
      puts "❌ #{player.name} rolled too high! Need exactly #{GameConfig::WINNING_POSITION - player.position} to win."
      puts "📍 #{player.name} stays at position #{player.position}"
      return false
    end
    
    player.move(dice_roll)
    handle_special_square(player)
    
    if player.won?
      puts "🎉 #{player.name} WINS! 🎉"
      return true
    end
    
    false
  end
  
  def handle_special_square(player)
    position = player.position
    
    if @board.special_square?(position)
      destination = @board.get_destination(position)
      
      if @board.is_ladder?(position)
        puts "🪜 #{player.name} found a ladder! Climbing from #{position} to #{destination}"
      elsif @board.is_chute?(position)
        puts "🛝 #{player.name} hit a chute! Sliding down from #{position} to #{destination}"
      end
      
      player.instance_variable_set(:@position, destination)
    end
  end
  
  def display_positions
    puts "\n📊 Current Positions:"
    @players.each do |player|
      status = player.won? ? "🏆 WINNER!" : "Position #{player.position}"
      puts "  #{player.name}: #{status}"
    end
    puts "=" * 50
  end
  
  def display_game_over
    puts "\n🏁 GAME OVER! 🏁"
    puts "\n📈 Final Results:"
    @players.each do |player|
      puts "  #{player.name}: #{player.position}"
    end
    puts "\n🎊 Thanks for playing Chutes and Ladders! 🎊"
  end
end
