# Ruby Chutes
My first ruby program! Just a simple game of chutes and ladders. Might get obsessed and make something more out of it. Yeah Rails... I'm looking at you.

Thanks to my best friend Devon for the motivation.

## 🎮 Game Overview

Chutes and Ladders is a simple race game where players roll dice to move around a 100-square board. Players can climb ladders to move ahead or slide down chutes to fall behind. The first player to reach square 100 exactly wins!

## 🚀 Features

- **Clean Object-Oriented Design**: Well-structured classes for Player, GameBoard, Dice, and Game
- **Professional Code Style**: Follows Ruby best practices and conventions
- **Modular Architecture**: Each class in its own file for better maintainability
- **Visual Feedback**: Emoji-enhanced output for better user experience
- **Flexible Player System**: Easy to add or modify players
- **Complete Game Logic**: Handles all game rules including exact wins and special squares

## 📋 Requirements

- Ruby 2.0 or higher
- No external dependencies

## 🎯 How to Play

1. **Run the game**: `ruby main.rb` (or `ruby chutes_and_ladders.rb` for legacy)
2. **Roll the dice**: Each turn, roll a 6-sided die
3. **Move forward**: Move the number of spaces shown on the die
4. **Special squares**: 
   - 🪜 **Ladders**: Climb up to a higher position
   - 🛝 **Chutes**: Slide down to a lower position
5. **Win condition**: Reach square 100 exactly (no overshooting!)

## 🏗️ Project Structure

```
ruby-chutes/
├── main.rb                    # Main entry point (recommended)
├── chutes_and_ladders.rb      # Legacy entry point
├── config.rb                  # Game configuration
├── lib/                       # Class library directory
│   ├── player.rb             # Player class
│   ├── game_board.rb         # GameBoard class
│   ├── dice.rb               # Dice class
│   └── game.rb               # Game class
├── README.md                  # This file
└── LICENSE                    # Open source license
```

## 🔧 Ruby Concepts Demonstrated

### Classes and Objects
- **Class Definition**: `class Player`
- **Constructor**: `initialize` method
- **Instance Variables**: `@name`, `@position`
- **Attribute Readers**: `attr_reader :name, :position`

### Methods and Control Flow
- **Method Definition**: `def method_name`
- **Private Methods**: `private` keyword for encapsulation
- **Conditional Statements**: `if/else` logic
- **Loops**: `loop do` and `each` iteration

### Data Structures
- **Hashes**: `{key => value}` for game board
- **Arrays**: `[item1, item2]` for player lists
- **Symbols**: `:name` for method references

### Ruby Idioms
- **String Interpolation**: `"#{variable}"`
- **Method Chaining**: `players.map(&:name).join(', ')`
- **Ternary Operator**: `condition ? value1 : value2`
- **Guard Clauses**: `return false unless condition`

### File Organization
- **Load Paths**: `$LOAD_PATH.unshift` for library inclusion
- **Require Statements**: `require 'filename'` for dependencies
- **Modular Design**: One class per file for maintainability

## 🎲 Game Board Layout

The game includes classic Chutes and Ladders positions:

**Ladders (Climb Up):**
- 1 → 38, 4 → 14, 9 → 31, 21 → 42, 28 → 84
- 36 → 44, 51 → 67, 71 → 91, 80 → 100

**Chutes (Slide Down):**
- 16 → 6, 47 → 26, 49 → 11, 56 → 53, 62 → 19
- 64 → 60, 87 → 24, 93 → 73, 95 → 75, 98 → 78

## 🚀 Running the Game

```bash
# Recommended: Use the new structure
ruby main.rb

# Legacy: Use the old structure
ruby chutes_and_ladders.rb

# Or make it executable (Unix/Linux/macOS)
chmod +x main.rb
./main.rb
```

## 🎯 Customization

### Adding More Players
Edit `config.rb`:
```ruby
PLAYER_NAMES = [
  "Alice", "Bob", "Charlie", "Diana"
]
```

### Modifying the Board
Edit the `CHUTES_AND_LADDERS` hash in `config.rb` to add or change special squares.

### Changing Game Rules
Modify the `take_turn` method in `lib/game.rb` to implement custom rules.

## 📚 Learning Ruby

This project demonstrates fundamental Ruby programming concepts:

1. **Start Simple**: Begin with basic classes and methods
2. **Build Incrementally**: Add features one at a time
3. **Use Ruby Conventions**: Follow naming conventions and idioms
4. **Encapsulate Logic**: Keep related functionality together
5. **Organize Code**: Separate classes into individual files
6. **Test as You Go**: Run the code frequently to verify functionality

## 🔍 Code Organization Benefits

**Why separate files?**
- **Maintainability**: Easier to find and modify specific functionality
- **Readability**: Each file has a single, clear purpose
- **Reusability**: Classes can be easily reused in other projects
- **Collaboration**: Multiple developers can work on different classes
- **Testing**: Easier to write unit tests for individual classes
- **Ruby Conventions**: Follows standard Ruby project structure

## 🤝 Contributing

Feel free to:
- Add new features
- Improve the code structure
- Fix any bugs
- Enhance the user interface
- Add more game variations

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy Coding! 🎉**

*Built with ❤️ and Ruby*
