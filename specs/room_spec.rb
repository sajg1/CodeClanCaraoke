require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new("Rock Room", 5)
  end

  def test_room_has_a_name
    assert_equal("Rock Room", @room.name)
  end

  def test_room_has_a_capacity
    assert_equal(5, @room.capacity)
  end

  def test_room_has_an_empty_playlist
    assert_equal(0, @room.song_count)
  end
end
