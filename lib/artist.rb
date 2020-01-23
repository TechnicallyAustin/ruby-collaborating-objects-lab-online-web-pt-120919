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
  Song.all.detect { |song| song.artist == self }
end

def add_song(song)
  @songs << song
  song.artist = self.name
end

def self.find_or_create_by_name(artist)
  included = self.all.select { |names| names == self.name}
  if included
    artist.name
  else 
    artist = Artist.new(artist)
  end
  #use uniq 
  # use select
end
  
  
end