class Song
    attr_accessor :name, :artist, :genre
    
    @@all = []
    @@genres = []
    @@artists = []
    @@count = 0
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@artists << self.artist
        @@genres << self.genre
        @@count += 1
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    # def counter(array)
    #     hash = {}
    #     array.each do |x|
    #         if hash.key?(x)
    #             hash[x] +=1
    #         else
    #             hash[x] = 1
    #         end
    #     end
    #     hash
    # end

    def self.genre_count
        hash = {}
        
        @@genres.each do |x|
            if hash.key?(x)
                hash[x] +=1
            else
                hash[x] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        
        @@artists.each do |x|
            if hash.key?(x)
                hash[x] +=1
            else
                hash[x] = 1
            end
        end
        hash
       
    end



end