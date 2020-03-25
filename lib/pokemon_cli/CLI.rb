#our CLI controller

class PokemonCLI::CLI

  @@prompt = ">"

  def call
    loading
    API.create_objects
    2.times {puts " "}
    puts "Welcome to the complete Gen. 1 Pokedex!"
    sleep(1)
    puts "Type '0' to see full list of Pokemon or type '1234' to close"
    print @@prompt
    start
    closeing
  end

  def start
    input = nil
    while input != 1234
      input = gets.to_i
    case input
    when 0
      API.list_names
      puts " "
      puts "Enter in the Pokemon Index number to see that stats:"
      print @@prompt
    when 1..151
      puts " "
      puts " "
      Pokemon.get_stats(input)
      puts " "
      puts " "
      puts "Enter in another number to learn more, type '0' to see the list again or type '1234' to close."
      @@prompt
    when 152..1233
      puts "Please enter a number between 1 - 151"
    when 1235..Float::INFINITY
      puts "Please enter a number between 1 - 151"
    end
    end
  end

  def closeing
    puts "See you next time!"
  end

  def loading
    num = 0
    until num == 3 do
      puts "LOADING DATA...PLEASE WAIT"
      sleep(1)
      num += 1
    end
    end
end
