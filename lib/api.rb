class API 
  
  def self.get_beers
    url= "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response=Net::HTTP.get(uri)
    
    beers=JSON.parse(response)["beers"].each do |b|
      Beer.new(name: b["name"], id: b["id"]) if b["name"] != nil
    # .parse = to turn it into something the user can consumer
    end
    #binding.pry
  end
  
  def self.getbeer(id)
    url = "https://api.punkapi.com/v2/beers/#{id}"
    uri - URI(url)
    response=Net::HTTP.get(uri)
    
    
  end
end

#description: b["description"], tagline: b["tagline"], abv: b["abv"]