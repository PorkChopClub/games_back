require 'test_helper'

class GamesBackTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GamesBack::VERSION
  end

  def test_it_works_for_one_ranking
    results = GamesBack.calculate({ 1 => [12, 29] })
    expected = { 1 => nil }
    assert_equal expected, results
  end
end
