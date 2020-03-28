#our CLI controller

class PokemonCLI::CLI

  @@prompt = ">"

  def call
    loading
    API.create_objects
    # binding.pry
    2.times {puts " "}
    puts "Welcome to the complete Gen. 1 Pokedex!"
    sleep(1)
    puts "Type 'start' to see full list of Pokemon or type 'exit' to close"
    print @@prompt
    start
    # closeing
  end

  def start
    input = nil
    while input != "exit"
      input = gets.chomp
      case input
      when "start"
        Pokemon.get_name_list
        puts " "
        puts "Enter the Pokemon's index number to learn more, or type 'exit' to close."
        print @@prompt
      # when 1..151
      #   puts " "
      #   Pokemon.find_index((input).to_i)
      #   puts " "
      #   puts "Enter in another number to see the stats or type 'exit' to close."
      #   puts " "
      #   print @@prompt
    else
      puts " "
      test(input)
    end
    end
  end

  def closeing
    puts "See you next time!"
  end

  def loading
    puts "LOCATING DATA"
    sleep(1)
    puts "DOWNLOADING POKEMON DATA"
    sleep(1)
    puts "CREATING OBJECTS...THIS MAY TAKE A FEW SECONDS"
  end

  def test(num = nil)
    if (1..151).cover?((num).to_i)
      Pokemon.find_index((num).to_i)
      puts " "
      puts "Enter in another number to see the Pokemon's stats, type 'start' to see the list again, or type 'exit' to close."
      puts " "
      print @@prompt
    elsif num == "exit"
      closeing
    else
      puts "please enter a number between 1 and 151"
    end
  end

end
