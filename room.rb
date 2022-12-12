class Room
  attr_reader :name, :capacity
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @playlist = []
  end

  def song_count
    return @playlist.length
  end
end
