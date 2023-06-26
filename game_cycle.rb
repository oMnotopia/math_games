# This class will loop through the game sequence and call other class methods as needed.
require "./win_condition"
require "./questions"
require "./turn"
require "./players"

def game_cycle
  win_condition = WinCondition.new
  players = Players.new(3, 3)

  until (win_condition.did_someone_win(players.player_1_lives, players.player_2_lives))
    turn = players.turn
    random_num = rand(1..20)
    puts "Player #{turn}: #{@math_questions[random_num][:question]}"
    player_answer = gets.chomp
    unless(@math_questions[random_num][:answer] == player_answer.to_i)
      puts "Player #{turn}: Sorry, that's wrong!"
      if (turn == 1)
        players.player_1_lives -= 1
      else
        players.player_2_lives -= 1
      end
    else
      puts "Player #{turn}: Yes! You are correct."
    end

    if(players.turn == 1)
      players.turn = 2
    else 
      players.turn = 1
    end  
      
    puts "P1: #{players.player_1_lives}/3 vs P2: #{players.player_2_lives}/3"
    puts ""
    puts "----- NEW TURN -----"
  end
end

game_cycle


