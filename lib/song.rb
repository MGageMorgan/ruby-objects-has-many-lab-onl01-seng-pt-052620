class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    @artist.songs << self
  end

  def artist
    @artist
  end
end
