
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
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
        genre_hash = {} #hash = {genre => number}
        @@genres.each do |genre| 
            if genre_hash[genre] 
               genre_hash[genre] += 1
            else 
                genre_hash[genre] = 1
                #create genre_hash[genre]
                #start the count for that key
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {} #hash = {genre => number}
        @@artists.each do |artist| 
            #count = 0
            if artist_hash[artist]
               artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
                #create genre_hash[genre]
                #start the count for that key
            end
        end
        artist_hash
    end
end

#returns a hash, keys are names of each genre, value is amount
        #keys/genres point to value = number of songs
        #iterate over @@genres array and populate hash[key/genre] = value pairs
        #check to see if hash already contains key, if so += key by 1