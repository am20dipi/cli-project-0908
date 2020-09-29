class CLI
  def menu
    API.get_beers
    puts ""
    puts "Welcome to the Beer Punk"
    puts "_______________"
    puts ""
    puts "To view a listing of beers please enter 'beers' or enter 'exit' to exit."
    puts ""
    #id = gets.strip.downcase.to_i
    #API.getbeer(id)
    
    until input == "exit"
      input = gets.strip.downcase
      
      if input == "beers"
        puts ""
        print_beers
        puts "___________________"
        puts "To view more info about a beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
        puts ""
        
      elsif input.to_i > 0 && input.to_i <= Beer.all.length
        beer_info(input)
        puts "To view more info about a beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
      elsif input == "exit"
        puts ""
        puts "___________________"
        puts "Thank you for using Beer Punk! Cheers!"
        puts "___________________"
      else
        puts ""
        puts "___________________"
        puts "To view more info about a beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
        puts ""
      end
    end
      
  end
  
  def print_beers
    beers = Beer.all
    beers.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name}"
    end
  end
  
  
end
    