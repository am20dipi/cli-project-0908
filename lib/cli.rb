class CLI
  def menu
    puts ""
    puts "Welcome to the Beer Punk"
    puts "_________________________"
    puts ""
    puts "To view a delectable listing of beers, please enter 'beers'." 
    puts "Or enter 'exit' to exit."
    puts ""
    beers = Beer.all
    input = gets.strip.downcase
    API.get_beers(input)
      if input == "beers"
        puts ""
        print_beers
        puts "___________________"
        puts prompt
        puts ""
      elsif input == "exit"
        puts ""
        puts "_____________________________________________"
        puts ""
        puts "Thank you for using Beer Punk! Cheers! Clink!"
        puts "_____________________________________________"
      else
        puts ""
        puts "___________________"
        puts "Sorry, I do not understand. Please enter 'beers' to view our listing." 
        puts "Or enter 'exit' to exit."
        puts ""
      end
    end
      
  end
  
  def prompt 
    puts "" 
    puts "To view more info about a beer, enter the number of the beer."
    puts "Or enter 'exit' to exit."
    puts ""
  end
      
          
  
  def print_beers
    Beer.all.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name}"
    end
  end

    