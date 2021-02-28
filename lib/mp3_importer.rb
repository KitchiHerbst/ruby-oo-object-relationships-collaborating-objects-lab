require 'pry'


class MP3Importer
    attr_accessor :path
    
    @@all = []

    def initialize(path)
        @path=path
        
        @@all << self
        
    end

    def files
        @@all.size
        #binding.pry
    end

end


