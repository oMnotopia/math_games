# This class will loop through the game sequence and call other class methods as needed.
require "./win_condition"
require "./questions"

def game_cycle
  win_condition = WinCondition.new
  lives1 = 1
  lives2 = 1
  until (win_condition.did_someone_win(lives1, lives2))
    puts "#{@math_questions[0][:question]}"
    player_answer = gets.chomp
    unless(@math_questions[0][:answer] == player_answer)
      lives1 -= 1
    end
  end

end

game_cycle


