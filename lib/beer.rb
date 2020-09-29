class Beer
  attr_accessor :name, :tagline, :description, :abv, :first_brewed
  @@all = []
  
  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}
    @@all << self
  end
  
  def self.all
    @@all
  end
end