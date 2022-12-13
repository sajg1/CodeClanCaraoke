class Room
  attr_reader :name, :capacity, :guest_list, :playlist
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guest_list = []
    @playlist = []
  end

  def song_count
    return @playlist.length
  end

  def add_song(song)
    @playlist.append(song)
  end

  def remove_song(song)
    @playlist.delete(song)
  end

  def guest_count
    return @guest_list.length
  end

  def add_guest(guest)
    if @guest_list.length < @capacity
      @guest_list.append(guest)
    end
  end

  def remove_guest(guest)
    @guest_list.delete(guest)
    # for g in @guest_list
    #   if g.name == guest.name
    #
    #   end
    end
end
