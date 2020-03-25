#our CLI controller

class PokemonCLI::CLI

  @@prompt = ">"

  def call
    loading
    API.create_objects
    2.times {puts " "}
    puts "Welcome to the complete Gen. 1 Pokedex!"
    sleep(1)
    puts "Type 'start' to see full list of Pokemon or type 'exit' to close"
    print @@prompt
    # list_actions
    start
    closeing
  end

  def start
    input = nil
    while input != "exit"
      input = gets.chomp
    case input
    when "start"
      binding.pry
      # API.create_objects
      API.list_names
      2.times {puts " "}
      # input_loop
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

  def input_loop
    
  end

end
