# This class will loop through the game sequence and call other class methods as needed.
require "./win_condition"
require "./questions"
require "./turn"
require "./players"

def game_cycle
  win_condition = WinCondition.new
  player_turn = PlayerTurn.new
  player_lives = PlayerLives.new(1, 1)

  until (win_condition.did_someone_win(player_lives.player_1_lives, player_lives.player_2_lives))
    turn = player_turn.get_turn
    random_num = rand(1..20)
    puts "Player #{turn}: #{@math_questions[random_num][:question]}"
    player_answer = gets.chomp
    unless(@math_questions[random_num][:answer] == player_answer.to_i)
      if (turn == 1)
        player_lives.player_1_lives -= 1
      else
        player_lives.player_2_lives -= 1
      end
    end

    puts "P1: #{player_lives.player_1_lives}/3 vs P2: #{player_lives.player_2_lives}/3"
    puts "----- NEW TURN -----"
  end
  puts player_lives.player_1_lives, player_lives.player_2_lives

end

game_cycle


