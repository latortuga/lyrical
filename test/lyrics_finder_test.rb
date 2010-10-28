require 'test_helper'
class LyricsFinderTest < Test::Unit::TestCase
  def setup
    @query = "Thrice Deadbolt"
  end

  def test_self_find
    assert_not_nil Lyrical::LyricsFinder.find(@query)
  end
end
