class API 
  
  def self.get_beers(beers)
    #binding.pry
    url= "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response=Net::HTTP.get(uri)
    #binding.pry
    beer_info =JSON.parse(response)
    #binding.pry
    beer_info.each do |b|
      beers = Beer.new(name: b["name"], id: b["id"]) if b["name"] != nil
    # .parse = to turn it into something the user can consumer
    end
    #binding.pry
  end
  
end

#description: b["description"], tagline: b["tagline"], abv: b["abv"]