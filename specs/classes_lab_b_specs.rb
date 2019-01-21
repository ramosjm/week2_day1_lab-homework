require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab_b.rb')

class MyTeamTest < MiniTest::Test

  def setup()
    @team_info = MyTeam.new("Yorkies",["dave","nathan","bob"],"Mike Douglas")
    @new_player ="tony"
  end

  def test_get_team_name()
    assert_equal("Yorkies",@team_info.team_name)
  end

  def test_get_players()
    assert_equal(["dave", "nathan", "bob"],@team_info.players)
  end

  def test_get_coach()
    assert_equal("Mike Douglas", @team_info.coach)
  end

  def test_set_coach_name()
    @team_info.coach ="Steve Miller"
    assert_equal("Steve Miller",@team_info.coach)
  end

  def test_add_player()
    @team_info.add_player(@new_player)
    assert_equal(4,@team_info.players.count)
  end

end
