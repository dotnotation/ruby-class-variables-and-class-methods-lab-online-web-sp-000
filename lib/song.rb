require 'pry'
class Song
  
  @@count=0
  @@genres=[]
  @@artists=[]
  
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    #binding.pry
  end
  
  def new(name, artist, genre)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def genre_count(genre)
    hash={}
    hash << @@genres.histogram
  end
end