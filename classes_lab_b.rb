class MyTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name,players,coach,points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end



  def add_player(player)
    @players << player
  end

  def find_player(name)
    for player in @players
      if player == name
        return player
      end
    end
  end

  def result_points(result)
    return @points =+1 if result == "win"
    return @points -=1 if result == "lose"

  end

  # old code:
  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end


end
