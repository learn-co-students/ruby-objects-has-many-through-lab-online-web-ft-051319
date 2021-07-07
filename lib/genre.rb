require 'pry'

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
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    #binding.pry
    Song.all.collect do |song|
     if song.genre.name == self.name
       song.artist
     end
    end
  end

end