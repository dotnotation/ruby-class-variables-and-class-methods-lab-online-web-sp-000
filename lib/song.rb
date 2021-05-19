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
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    hash= hash.new(0)
    @@genres.each{|genre| hash[genre] +=1}
    hash
     #@@genres[genre] ||= +1
     #binding.pry
  end
end