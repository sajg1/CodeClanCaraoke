require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test
  def setup
    @guest = Guest.new("Steve")
  end

  def test_guest_has_a_name
    assert_equal("Steve", @guest.name)
  end
end
