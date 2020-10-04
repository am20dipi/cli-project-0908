class CLI
  def menu
    API.get_beers
    puts ""
    puts "Welcome to the Beer Punk"
    puts "_________________________"
    puts ""
    prompt_two
    input = gets.strip.downcase
    while input != 'exit' do
      if input == 'beers'
        puts ""
        print_beers
        puts "___________________"
        prompt
        input = gets.strip.downcase
        while input != 'back' && input != 'exit' do 
          if input.to_i > 0 && input.to_i <= Beer.all.length
            beer = Beer.all[input.to_i-1]
            print_beer(beer)
          else
            puts ""
            puts "Sorry, I do not understand.(inner loop)" 
            puts ""
          end
          puts ""
          puts "______________________________________________________________"
          puts ""
          puts "Please enter a number or enter 'back' to go back to main menu."
          puts "______________________________________________________________"
          input = gets.strip.downcase
        end
      else
        puts ""
        puts "_______________________________________"
        puts ""
        puts "Sorry, I do not understand.(outer loop)" 
        puts ""
      end
      prompt_two
      input = gets.strip.downcase
    end
    puts ""
    puts "_____________________________________________"
    puts ""
    puts "Thank you for using Beer Punk! Cheers! Clink!"
    puts "_____________________________________________"
  end
  
  def prompt 
    puts "" 
    puts "To learn more info about a specific beer, enter the corresponding number of the beer."
    puts "Or enter 'exit' to exit."
    puts ""
  end
  
  def prompt_two
    puts ""
    puts "To view a delectable listing of beers, please enter 'beers'." 
    puts "Or enter 'exit' to exit."
    puts ""
  end
    
          
  
  def print_beers
    Beer.all.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name}"
    end
  end
  
  def print_beer(beer)
    puts "Name: #{beer.name}"
    puts ""
    puts "Tagline: #{beer.tagline}"
    puts ""
    puts "Description: #{beer.description}"
    puts ""
    puts "ABV: #{beer.abv}"
    puts""
    puts "First Brewed: #{beer.first_brewed}"
  end
  
    
  
end