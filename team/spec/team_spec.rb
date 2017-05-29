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

end