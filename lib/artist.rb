require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self  
  end

def self.all
  @@all
end

def songs 
  Song.all.select { |song| song.artist == self }
end

def add_song(song)
  @songs << song
  song.artist = self
end

def self.find_or_create_by_name(artist)
  included = self.all.select { |name| name == self.name}
  if included
    included
  else 
    artist = Artist.new(artist)
  end
  #use uniq 
  # use select
end
  
  
end