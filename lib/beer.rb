class Beer
  attr_accessor :name, :id, :tagline, :description, :abv, :first_brewed
  @@all = []
  
  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @id = attribute_hash[:id]
    @tagline = attribute_hash[:tagline]
    @description = attribute_hash[:description]
    @abv = attribute_hash[:abv]
    @first_brewed = attribute_hash[:first_brewed]
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.find_by_id(id) 
    self.all.select{|b| b.id == id}
  end
end
