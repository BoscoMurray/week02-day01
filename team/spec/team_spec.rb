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
    assert_equal("cohort13", @team01.get_team_name)
  end

  def test_get_players
    assert_equal(["Ross", "Martin", "James"], @team01.get_players)
  end

  def test_get_coach
    assert_equal("Sandy", @team01.get_coach)
  end

end