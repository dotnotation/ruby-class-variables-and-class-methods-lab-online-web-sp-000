require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count=[]
  @@genres=[]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    #binding.pry
  end
  
  def new(name, artist, genre)
  end
  
  def self.count
    @@count
  end
  
  def self.genre
    @@genres
  end
end