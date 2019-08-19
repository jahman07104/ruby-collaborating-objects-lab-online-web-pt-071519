require 'Pry'
class Song
  attr_accessor :name, :artist


     @@all = []
     
   def initialize(name)
    @name = name
    @@all<< self
    
  end

  def self.new_by_filename(file)
    data = file.split(" - ")
    song = Song.new(data[1])
    song.artist_name = data[0]
    song 
    
  end

 
   def self.all
      @@all
  end
  
end