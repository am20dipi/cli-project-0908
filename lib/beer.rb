class Beer #see all beers, or a see a specific beer & its corresponding information
  attr_accessor :name, :id, :tagline, :description, :abv, :first_brewed
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
  
  def self.all #return of all
    @@all
  end
  
  def self.find_by_id(id) #class constructor, returns the corresponding beer of the number input
    self.all.select{|b| b.id == id}
  end
end



#attributes.each {|key, value| self.send("#{key}=", value)}
#tagline, :description, :abv, :first_brewed,