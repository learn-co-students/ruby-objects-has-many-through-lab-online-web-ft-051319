class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name,genre)
    #creates a new song and song should know it belongs to artist 
    song = Song.new(name,self,genre)
  end
  
  def songs 
    #iterate through songs and finds song that belongs to that artist
    Song.all.select do |song| 
      song.artist == self 
    end 
    
    # pop = Genre.new("Pop")
    # beyonce = Artist.new("beyonce")
    # beyonce.new_song("Baby Boy", pop)
    # beyonce.songs 
    # Song.all => [<Song938503945 @name = "Baby Boy", @artist = <Arist03985395 @name = "Beyonce">, @genre = <Genre39485309458 @name = "Pop">>, <Song345983045 ...>, <Song903845345>...]
  end 
  
  def genres 
    songs.collect do |song| 
      song.genre 
    end
  end 
  
  
  def self.all 
    @@all 
  end 
end 

