#our CLI controller

class PokemonCLI::CLI

  def call
    puts "Welcome to the complete Gen. 1 Pokedex!"
    sleep(1)
    list_actions
    user_selection
    closeing
  end

  def list_actions
    puts "Enter a number to begin or type 'exit' to close"
    puts <<-DOC.gsub /^\s*/, ''
      1. Enter a Pokemons Name to get more info.
      2. List Pokemon by Index.
    DOC
  end
  def user_selection
    input = nil
    while input != "exit"
      input = gets.chomp
    case input
    when "1"
      puts "Enter a Pokemons Name to get more information -- Make sure it is spelled correctly."
      #retreive input // list info on pokemon
      # print custom error if name is not in API or check spelling
      input = gets.chomp
      #request more input
      puts "Enter another name to explore more. Type 'menu' to see the menu or 'exit' to close."
    when "2"
      API.list_names
      2.times {puts " " }
      puts "Enter the Pokemon Index number to learn more. Type 'menu' to see the menu or 'exit' to close"
      2.times {puts " " }
    end
   end
  end

  def closeing
    puts "See you next time!"
  end

end
