class API
  
  def self.get_beers(id)
    url = "https://api.punkapi.com/v2/beers/#{id}"
    uri - URI(url)
    response=Net::HTTP.get(uri)
    
    beers=JSON.parse(response)["beers"].each do |b|
      Beer.new(name: b["strBeer"], id: b["idBeer"], description: b["descriptionBeer"], tagline: b["taglineBeer"], abv: b["abvBeer"]) if b["strBeer"] !=
    
  end
  
  def self.getbeer
    
  end
end