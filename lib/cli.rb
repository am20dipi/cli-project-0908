class CLI
  def menu
    API.get_beers
    puts ""
    puts "Welcome to the Beer Punk"
    puts "_________________________"
    puts ""
    puts "To view a delectable listing of beers, please enter 'beers'." 
    puts "Or enter 'exit' to exit."
    puts ""
    input = gets.strip.downcase
    while input != "exit" do
      if input == "beers"
        puts ""
        print_beers
        puts "___________________"
        puts prompt
        puts ""
          if input.to_i > 0 && input.to_i <= Beer.all.length
            beer = Beer.find_by_id{@id}[input.to_i-1]
            API.get_beers
          end
        puts ""
      else
        puts ""
        puts "___________________"
        puts "Sorry, I do not understand. Please enter 'beers' to view our listing." 
        puts "Or enter 'exit' to exit."
        puts ""
      end
    end
    puts ""
    puts "_____________________________________________"
    puts ""
    puts "Thank you for using Beer Punk! Cheers! Clink!"
    puts "_____________________________________________"
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
  
end