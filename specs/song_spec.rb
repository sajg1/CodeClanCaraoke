require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test
  def setup
    @song = Song.new("Dream On", "Rock")
  end

  def test_song_has_name
    assert_equal("Dream On", @song.name)
  end

  def test_song_has_a_genre
    assert_equal("Rock", @song.genre)
  end
end
