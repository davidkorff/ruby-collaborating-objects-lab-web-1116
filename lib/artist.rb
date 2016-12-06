class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
		@songs
	end

  def self.all
		@@all
	end

  def save
    @@all << self
    self
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    self.new(name).save
  end

  def self.find_or_create_by_name(name)
 		if self.find_by_name(name)
 			self.find_by_name(name)
 		else
 			self.create_by_name(name)
 		end
 	end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end




  # def name=(name)
  #   @name = name
  # end
  #
  # def songs(name)
  #   @@songs
  # end
  #
  # def self.add_song(song_one)
  #   @@songs << Song.new(song_one)
  # end

end
