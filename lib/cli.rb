class CLI
  def menu
    puts ""
    puts "Welcome to the Beer Punk"
    puts "_________________________"
    puts ""
    puts "To view a delectable listing of beers, please enter 'beers' or enter 'exit' to exit."
    puts ""
    beers = Beer.all
    input = gets.strip.downcase
    
    until input == "exit"
      input = gets.strip.downcase
      
      if input == "beers"
        puts ""
        print_beers
        puts "___________________"
        puts "To view more info about a beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
        puts ""
      else 
        puts "To view a delectable listing of beers, please enter 'beers' or enter 'exit' to exit."
        puts ""
      end
    end
        
      if input.to_i > 0 && input.to_i <= Beer.all.length
        beer_info(input)
        puts "To learn about a different beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
      elsif input == "exit"
        puts ""
        puts "___________________"
        puts "Thank you for using Beer Punk! Cheers! Clink!"
        puts "___________________"
      else
        puts ""
        puts "___________________"
        puts "To view more info about a beer, enter the number of the beer."
        puts "Or enter 'exit' to exit."
        puts ""
      end
    
      
  
  
  def print_beers
    Beer.all.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name}"
    end
  end
  
end 
    