class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    song.save
    return song 
  end
  
  def new_by_name(song_name)
    song.name = song_name
    return song 
  end

end
