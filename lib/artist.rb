require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all
  end

  def add_song(song)
    @@all << song
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def Artist.song_count
    Song.all.count()
  end
end
