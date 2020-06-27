class Song
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def artist=(artist)
    @artist = artist
  end
end
