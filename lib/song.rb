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
    song = self.new
    song.save
    return song 
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    return song 
  end
  
  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    song.save 
    return song 
  end
  
  def self.find_by_name(song_name)
    self.all.find {|n| n.name == song_name}
    end
    
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
   end 
  
  def self.alphabetical
    return @@all.sort_by{|n| n.name} 
  end 
  
  def self.new_from_filename(file) 
    song_format = file.split("-")
    artist_name = song_format[0]
    song_name = song_format[1].gsub(".mp3","")
    
    self.create_by_name(song_name)
    song.artist_name = artist_name
  end 
    
    

end
