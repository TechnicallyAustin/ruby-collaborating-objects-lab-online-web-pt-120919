class Song 
  @@all = [] 
  attr_accessor :artist, :name, :artist_name
  def initialize(name)
    @name = name
    @@all << self 
    
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    file = self.new(file)
    file.artist = artist 
end

def artist_name(artist)
  Artist.find_or_create_by-name(artist)
end


end