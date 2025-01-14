
class Artist
  attr_accessor :name

   @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def add_song(song)
    song.artist = self
  
  end

   def songs
    Song.all.select { |song|song.artist == self}
  end

   def self.all
    @@all
  end
  
  def self.find(name)
  @@all.find{ |artist|artist.name==name}
  
  end

  def self.create(name)
  artist=Artist.new(name)
  artist
  
  end
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

   def print_songs
    songs.each {|song| puts song.name} 
   end
end