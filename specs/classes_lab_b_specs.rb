require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab_b.rb')

class MyTeamTest < MiniTest::Test

  def setup()
    @team_info = MyTeam.new("Yorkies","9","Mike Douglas")
  end

  def test_get_team_name()
    assert_equal("Yorkies",@team_info.get_team_name)
  end
  def test_get_players()
    assert_equal("9",@team_info.get_players)
  end
  def test_get_coach()
    assert_equal("Mike Douglas",@team_info.get_coach)
  end

  def test_set_coach_name()
    @team_info.set_coach("Steve Miller")
    assert_equal("Steve Miller",@team_info.get_coach)
  end

end
