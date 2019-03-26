class SportsTeam
  attr_accessor :team_name, :players, :coach_name, :points

  def initialize(team_name, players, coach_name, points)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = points
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player(name)
    return true if @players.include? (name)
  end

  def update_points(win_loss)
    if win_loss == 'win'
      @points += 1
    else
      @points -= 1
    end
    return @points
  end
end
