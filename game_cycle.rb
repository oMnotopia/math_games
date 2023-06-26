# This class will loop through the game sequence and call other class methods as needed.
require "./win_condition"
require "./questions"

def game_cycle
  win_condition = WinCondition.new
  lives1 = 3
  lives2 = 3
  puts @math_questions[0][:question]
  puts @math_questions[0][:answer]
  # until (win_condition.did_someone_win(lives1, lives2))

  # end

end

game_cycle


