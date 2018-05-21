require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.create
   title = self.new 
   #title.name = name 
   Song.all << title 
   title
   #Song.all.title 
  end 
  
  def self.new_by_name(name)
    title = self.new 
    title.name = name 
    title 
  end 
  
  def self.create_by_name(name)
    title = self.new 
    title.name = name 
    Song.all << title 
    title 
  end 
  
  def self.find_by_name(name)
    x = nil
    self.all.each {|i| 
      if i.name == name 
        x = i 
      end 
    }
    x
  end 
  
  def self.find_or_create_by_name(name)
    
    if self.find_by_name(name) != name 
      self.create_by_name(name) 
      self.find_by_name(name)
    else 
      self.find_by_name(name)
    end 
  end 
  
  def self.alphabetical
    alpha =  self.all.sort { |a, b| a <=> b }
    alpha
    
  end 

  def save
    self.class.all << self
  end

end
