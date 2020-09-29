class Beer
  attr_accessor :name, :tagline, :description, :abv, :first_brewed, :id
  @@all = []
  
  def initialize(name:, id:, tagline:, description:, abv:, first_brewed:)
    @name = name
    @id = id
    @tagline = tagline
    @description = description
    @abv = abv
    @first_brewed = first_brewed
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_id(id)
    self.all.select{|x| x.id == id}
  end
end

#attributes.each {|key, value| self.send("#{key}=", value)}