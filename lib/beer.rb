class Beer #see all beers, or a see a specific beer & its corresponding information
  attr_accessor :name, :id
  @@all = []
  
  def initialize(name:, id:)
    @name = name
    @id = id
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