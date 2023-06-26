# This class will generate players.

# Methods 
# 1.

class Players
  attr_accessor :player_1_lives, :player_2_lives, :turn

  def initialize (player_1_lives, player_2_lives)
    @player_1_lives = player_1_lives
    @player_2_lives = player_2_lives
    @turn  = 1
  end
end