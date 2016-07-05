require 'test_helper'

class GamesBackTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GamesBack::VERSION
  end

  def test_it_works_for_one_ranking
    actual = GamesBack.calculate({ 1 => [12, 29] })
    expected = { 1 => nil }
    assert_equal expected, actual
  end

  def test_it_works_for_more_rankings
    actual = GamesBack.calculate({ 1 => [3, 1], 2 => [1, 2], 3 => [10, 9], 4 => [0, 12] })
    expected = { 1 => nil, 3 => 0.5, 2 => 1.5, 4 => 7.0 }
    assert_equal expected, actual
  end
end
