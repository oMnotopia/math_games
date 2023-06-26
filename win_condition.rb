class WinCondition

  def did_someone_win(player_1_lives, player_2_lives)
    if(player_1_lives == 0 || player_2_lives == 0)
      return true
    end
    false
  end

end
