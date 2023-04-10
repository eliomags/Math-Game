* Task 1: Extract Nouns for Classes

- Player
- Game
- Question

* Task 2: Write their roles

1. Player
   Role: Represent each player in the game, keeping track of their lives and scores.

   State:
   - player_number (identifier)
   - lives
   - score

   Behavior:
   - initialize: Set up the player with an identifier, initial lives, and score.
   - decrease_life: Reduce the player's life by 1.
   - correct_answer: Increase the player's score by 1.
   - lost_all_lives: Check if the player has lost all lives.

2. Game
    Role: Manage the overall game logic, including turns, current player, and game loop.
    
    State:
    - player1
    - player2
    - current_player

    Behavior:
    - initialize: Set up the game with two players and set the current player.
    - game_over: Determine if the game has ended (one player has lost all lives).
    - switch_player: Change the current player to the other player.
    - game_loop: Run the game loop, managing turns, questions, and displaying scores.

3. Question
    Role: Generate math questions and validate player answers.
    
    State:
    number1
    number2
    answer

    Behavior:
    - initialize: Generate two random numbers and calculate their sum.
    - to_s: Generate the question string to display to the current player.
    - correct_answer?: Check if the given answer is correct.

    Further instructions:
    - The Game class will contain the game loop, as it manages the overall game logic.
    - The Game class should manage the current_player, as it is responsible for switching turns and managing game states.
    - The Player class should not contain user I/O, as it represents the individual player's state and behavior. The Game and Question classes will handle user I/O, with the Game class managing the overall game state and displaying the scores, and the Question class handling the math question presentation and validation.