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
  find = self.all.find { |arts| arts.name == artist}
  if find
    find
  else 
    artist = self.new(artist)
    artist  
    #binding.pry
  end
end

def print_songs
  p @songs 
end

  
  
end