# Configuration file for Chutes and Ladders Game
# Modify these values to customize your game

module GameConfig
  # Game settings
  BOARD_SIZE = 100
  WINNING_POSITION = 100
  
  # Player names (add or remove as needed)
  PLAYER_NAMES = [
    "Devon",
    "Jacob"
  ]
  
  # Game board layout - Chutes and Ladders
  # Format: starting_position => ending_position
  CHUTES_AND_LADDERS = {
    # Ladders (climb up) - good luck!
    1 => 38,   # Start to a great beginning
    4 => 14,   # Early boost
    9 => 31,   # Nice jump forward
    21 => 42,  # Mid-game advantage
    28 => 84,  # Big leap forward
    36 => 44,  # Steady progress
    51 => 67,  # Getting closer
    71 => 91,  # Almost there
    80 => 100, # Direct path to victory!
    
    # Chutes (slide down) - watch out!
    16 => 6,   # Oops, back to start
    47 => 26,  # Major setback
    49 => 11,  # Back to basics
    56 => 53,  # Small slip
    62 => 19,  # Another setback
    64 => 60,  # Minor slip
    87 => 24,  # Big fall
    93 => 73,  # So close, yet so far
    95 => 75,  # Another slip
    98 => 78   # Almost at the end, but not quite
  }
  
  # Display settings
  ENABLE_EMOJIS = true
  SHOW_TURN_NUMBERS = true
  SHOW_POSITIONS_AFTER_EACH_TURN = true
  
  # Game rules
  ALLOW_OVERSHOOT = false  # Must land exactly on 100 to win
  MAX_DICE_ROLL = 6
  MIN_DICE_ROLL = 1
  
  # Game speed settings (in seconds)
  GAME_SPEED = {
    WELCOME_DELAY: 2,        # Delay after welcome message
    RULES_DELAY: 2,          # Delay after showing rules
    TURN_HEADER_DELAY: 1,    # Delay after turn header
    PLAYER_TURN_DELAY: 1,    # Delay between player turns
    DICE_ROLL_DELAY: 1,      # Delay after dice roll
    MOVE_DELAY: 1,           # Delay after player moves
    SPECIAL_SQUARE_DELAY: 1, # Delay after special square events
    POSITIONS_DELAY: 2,      # Delay after showing positions
    GAME_OVER_DELAY: 2,      # Delay before game over
    WIN_DELAY: 1,            # Delay after someone wins
    TURN_START_DELAY: 0.5    # Delay at start of each turn
  }
end
