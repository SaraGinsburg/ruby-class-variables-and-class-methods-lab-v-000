class Song
  require 'pry'
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)

    @@count +=1
    @@genres << genre
    @@artists << artist

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
  end

  def self.genre_count
    @genre_count = {}
    @@genres.each do |g|
      @genre_count.key?(g) ? @genre_count[:g] += 1 : @genre_count[:g] = 1
    end
    binding.pry
    @genre_count
  end

  def self.artist_count
  end

end
