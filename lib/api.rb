class API 
  
  def self.get_beers(beers)
    #binding.pry
    url= "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response=Net::HTTP.get(uri)
    beer_info =JSON.parse(response)
    beer_info.each do |b|
      beers = Beer.new(name: b["name"], id: b["id"]) if b["name"] != nil
    # .parse = to turn it into something the user can consumer
    end
  end
  
  def self.getbeer(beer)
    url= "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response=Net::HTTP.get(uri)
    beer_info =JSON.parse(response)
    beer.tagline = beer_info["tagline"]
    beer.description = beer_info["description"]
    beer.abv = beer_info["abv"]
    beer.first_brewed = beer_info["first_brewed"]
  end
  
end

