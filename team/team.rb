class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def new_player(name)
    @players << name
  end

  def update_points(result)
    @points += 3 if result == "win"
    @points += 1 if result == "draw"
  end


end