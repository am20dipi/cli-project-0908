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
        puts ""
      else
        puts ""
        puts "___________________"
        puts "Sorry, I do not understand. Please enter 'beers' to view our listing." 
        puts "Or enter 'exit' to exit."
        puts ""
      end
      prompt
    end
    puts ""
    puts "_____________________________________________"
    puts ""
    puts "Thank you for using Beer Punk! Cheers! Clink!"
    puts "_____________________________________________"
  end
  
  def prompt 
    puts "" 
    puts "To view more info about a beer, enter the corresponding number of the beer."
    puts "Or enter 'exit' to exit."
    puts ""
  end
  
  def prompt_2
    puts ""
    puts "To return to our beer list, please enter 'beers'."
    puts "Or enter 'exit' to exit."
    puts ""
  end
          
  
  def print_beers
    Beer.all.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name}"
    end
  end
  
  def print_1_beer(beer)
    puts beer.name
  end
  
    
  
end