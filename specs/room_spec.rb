require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new("Rock Room", 5)
    @guest1 = Guest.new("Steve")
    @guest2 = Guest.new("Roisin")
    @song1 = Song.new("Dream On", "Rock")
    @song2 = Song.new("Song 2", "Rock")
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

  def test_a_room_can_accept_guests
    @room.add_guest(@guest1)
    assert_equal(1, @room.guest_count)
    assert_equal("Steve", @room.guest_list[0].name)
  end

  def test_remove_guest_from_a_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(2, @room.guest_count)
    @room.remove_guest(@guest1)
    assert_equal(1, @room.guest_count)
    assert_equal("Roisin", @room.guest_list[0].name)
  end

  def test_add_song_to_playlist
    @room.add_song(@song1)
    assert_equal("Dream On", @room.playlist[0].name)
    assert_equal(1, @room.song_count)
  end

  def test_remove_song_from_playlist
    @room.add_song(@song1)
    @room.add_song(@song2)
    assert_equal(2, @room.song_count)
    @room.remove_song(@song1)
    assert_equal(1, @room.song_count)
    assert_equal("Song 2", @room.playlist[0].name)
  end
end
