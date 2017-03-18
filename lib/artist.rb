class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  # in this instance the song argument isn't a string, but rather an
  # instance of the Song class
    # We are able to set the value of song.artist because our Song class
    # has a song.artist attr_accessor
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  # song_name is a string. song is a variable that will store a new
  # instance of the Song class.
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
