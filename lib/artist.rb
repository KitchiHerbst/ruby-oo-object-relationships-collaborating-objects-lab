

class Artist

    attr_accessor :name

    @@all = [ ]


    def initialize name
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        Artist.all.each do |object|
            if object.name == name
                return object
            end
        end
        return Artist.new(name) 
    end

    def preprint
        Song.all.select {|song| song.artist == self}
    end 
    
    def print_songs
       array = preprint.map {|object| object.name}
       puts array
    end

    def self.all
        @@all
    end
end