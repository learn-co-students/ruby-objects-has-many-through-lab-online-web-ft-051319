class Genre

    attr_accessor :name, :artists, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        @@all << self
    end

    def self.all
        @@all
    end

end