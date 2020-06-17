class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end 
  
  def save
    @@all << self 
  end 
  
  def songs 
    @songs
  end 
  
  def add_song(name) 
    Song.new(name, self)
  end 
  
  # def genres 
    
  # end
  
end 