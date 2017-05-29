require 'minitest/autorun'
require_relative '../team'

class TestTeam < MiniTest::Test

  def setup
    @team01 = Team.new(
      "cohort13",
      ["Ross", "Martin", "James"],
      "Sandy")
  end

  def test_get_team_name
    assert_equal("cohort13", @team01.team_name)
  end

  def test_get_players
    assert_equal(["Ross", "Martin", "James"], @team01.players)
  end

  def test_get_coach
    assert_equal("Sandy", @team01.coach)
  end

  def test_set_coach
    @team01.coach=("Zsolt")
    assert_equal("Zsolt", @team01.coach)
  end

  def test_new_player
    @team01.new_player("Sam")
    assert_equal(4, @team01.players.count)
  end

  def test_update_points__win
    @team01.update_points("win")
    assert_equal(3, @team01.points)
  end

  def test_update_points__draw
    @team01.update_points("draw")
    assert_equal(1, @team01.points)
  end

  def test_update_points__lose
    @team01.update_points("lose")
    assert_equal(0, @team01.points)
  end

end