# require 'pry'

class Song 
  
@@count = 0
 
def Song.count 
  @@count
end 
 
@@genres = []
 
def Song.genres
  @@genres.uniq
end
 
def self.genre_count
 genre_count = {}
 @@genres.each do |genre|
  # binding.pry
   
   if genre_count[genre]       # I don't understand how this works!
     genre_count[genre] += 1   # I don't understand how this works!
   else
     genre_count[genre] = 1
   end
 end
 genre_count
end
 
 @@artists = []
 
 def Song.artist_count
   @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 
   total}   #what does the semicolon do here?
 end
 
 def self.artists
   @@artists.uniq
 end
 
 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @@artists << artist
   @genre = genre
   @@genres << genre
   @@count += 1
 end
 
 attr_accessor :name, :artist, :genre
end 