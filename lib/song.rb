class Song 
  @@all = [] 
  attr_accessor :artist, :name 
  def initialize(name)
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
end

def artist_name(artist)
end


end