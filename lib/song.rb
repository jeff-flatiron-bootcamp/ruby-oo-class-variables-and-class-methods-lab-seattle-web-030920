class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count        
        retHash = {}
        Song.genres.each{|x| retHash[x] = @@genres.select{|y| x == y }.length}
        retHash
    end

    def self.artist_count
        retHash = {}
        Song.artists.each{|x| retHash[x] = @@artists.select{|y| x == y }.length}
        retHash
    end

end



# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# puts ninety_nine_problems.name
# puts ninety_nine_problems.genre
# puts ninety_nine_problems.artist