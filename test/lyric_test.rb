require 'test_helper'
class LyricTest < Test::Unit::TestCase
  def setup
    @lyric = Lyrical::Lyric.new(:title => 'Deadbolt', :artist => 'Thrice', :album => 'The Illusion of Safety', :content => "When deadbolts awake")
  end

  def test_init
    assert_not_nil Lyrical::Lyric.new
    assert_not_nil @lyric.title
    assert_not_nil @lyric.artist
    assert_not_nil @lyric.album
    assert_not_nil @lyric.content
  end

  def test_to_s
    assert_equal "When deadbolts awake", @lyric.to_s
  end
end
