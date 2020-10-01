class API 
  
  def self.get_beers
    #binding.pry
    url= "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response=Net::HTTP.get(uri)
    beer_info =JSON.parse(response)
    beer_info.each do |b|
      beers = Beer.new(name: b["name"], id: b["id"], tagline: b["tagline"], description: b["description"], abv: b["abv"], first_brewed: b["first_brewed"] ) if b["name"] != nil
    # .parse = to turn it into something the user can consumer
    end
  end

  
end

