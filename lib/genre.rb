class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.each {|songs| songs.genre}
  end

  def artists
    songs.map {|songs| songs.artist}
  end
end
