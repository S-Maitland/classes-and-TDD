require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test

  def test_get_team
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
    assert_equal('Glasgow Clan', sportsTeam.team_name)
  end

  def test_get_players
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
    assert_equal(['Scott','Craig'], sportsTeam.players)
  end

  def test_get_coach_name
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
    assert_equal('Peter Russell', sportsTeam.coach_name)
  end

  def test_add_new_player
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
    sportsTeam.add_new_player('John')
    assert_equal(['Scott','Craig','John'], sportsTeam.players)
  end

  def test_find_player
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
    result = sportsTeam.find_player('Craig')
    assert_equal(true, result)
  end

  def test_points_update
    sportsTeam = SportsTeam.new('Glasgow Clan',['Scott','Craig'] ,'Peter Russell', 0)
  assert_equal(1, sportsTeam.update_points('win'))
  end
end
