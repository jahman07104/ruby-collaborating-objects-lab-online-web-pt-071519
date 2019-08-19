
class Song
  attr_accessor :name, :artist


     @@all = []
     
   def initialize(name)
    @name = name
    @@all<< self
    
  end

  
    song   = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  
  def self.all
      @@all
  end
  
end