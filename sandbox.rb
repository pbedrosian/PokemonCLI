def start
  input = nil
  while input != "exit"
    input = gets.chomp
  case input

  when "start"
    API.list_names
    2.times {puts " " }
  when ('1'..'151')
  end
  puts "Enter the Pokemon Index number to learn more or type 'exit' to close"
  puts " "
  binding.pry
  index = gets.chomp
  index_selection(index)
 end
end


# def self.list_names
#   names = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=151')
#   # index = 0
#   # name_list = names["results"].collect { |p| "#{index += 1}. #{p["name"].capitalize}"}
#   @@name_list = names["results"].collect { |p| "#{p["name"].capitalize}"} # -- this retreives the pokemon name and capitalizes it.
#   # @@name_list.each {|name| name = Pokemon.new(name)} -- this creates the new class instances.
#
#   puts @@name_list
#   # name_list = Pokemon.new(name_list)
#   # binding.pry
# end

# def self.type
#   str = "https://pokeapi.co/api/v2/pokemon/#{index}/"
#   type = HTTParty.get(string)
# end


# def self.type
#   index = 0
#   while index <= 151
#     index += 1
#     string = "https://pokeapi.co/api/v2/pokemon/#{index}/"
#     stats = HTTParty.get(string)
#     test = stats["stats"]
#     @@all_stats = test.each {|n| n.fetch("base_stat")}
#     binding.pry
#     # Pokemon.attr_set
#     # @@name_list.each {|name| name = Pokemon.new(name)}
#
#   end
# end


#this is the CLI

input = nil
while input != "exit"
  input = gets.chomp
case input
when "start"
  API.list_names
  2.times {puts " "}
when ('1'..'151')
  puts "this is a test"
  # API.type
  API.info(1)
end
end

b = test.collect {|n| n["stat"].fetch("name").capitalize}

c = a.zip(b)
c = Pokemon.new(c)

puts c[5].join('  -  ')
puts c[4].join('  -  ')
puts c[3].join('  -  ')
puts c[0].join('  -  ')
puts c[2].join('  -  ')
puts c[1].join('  -  ')
end

,                           .::.
PokeMon Logo Converted       .;:**'            AMC
                          `            0
.:XHHHHk.              db.   .;;.     dH  MX   0
oMMMMMMMMMMM       ~MM  dMMP :MMMMMR   MMM  MR      ~MRMN
QMMMMMb  "MMX       MMMMMMP !MX' :M~   MMM MMM  .oo. XMMM 'MMM
`MMMM.  )M> :X!Hk. MMMM   XMM.o"  .  MMMMMMM X?XMMM MMM>!MMP
'MMMb.dM! XM M'?M MMMMMX.`MMMMMMMM~ MM MMM XM `" MX MMXXMM
~MMMMM~ XMM. .XM XM`"MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP
 ?MMM>  YMMMMMM! MM   `?MMRb.    `"""   !L"MMMMM XM IMMM
  MMMX   "MMMM"  MM       ~%:           !Mh.""" dMI IMMP
  'MMM.                                             IMX
   ~M!M                                             IMP


def logo
  puts "88888b.  .d88b. 888  888 .d88b. 88888b.d88b.  .d88b. 88888b."
  puts "888 "88bd88""88b888 .88Pd8P  Y8b888 "888 "88bd88""88b888 "88b"
  puts "888  888888  888888888K 88888888888  888  888888  888888  888"
  puts "888 d88PY88..88P888 "88bY8b.    888  888  888Y88..88P888  888"
  puts "88888P"  "Y88P" 888  888 "Y8888 888  888  888 "Y88P" 888  888"
  puts "888"
  puts "888"
  puts "888"
end

________   ____  _    __        _     ___    _
\       \  \_  |/ \  /_/   __  / |   /_  \  | |
 \_  \_  \ __\    /  ___  |  \/  | ___ |  \ | |
   \   __//  \|   \ / |_\ |      |/   \|   \| |
    \  \ | |_ |    \\  --|| |\/| |  |_ | |\   |
     \__\ \__/|_|\__|\__/ |_|  |_|\___/|_| |__|

## -- this is for the API class
     def self.list_names
       names = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=151')
       index = 0
       name_list = names["results"].collect { |p| "#{index += 1}. #{p["name"].capitalize}"}
       puts " "
       puts "Generation 1 Pokemon"
       puts " "
       puts name_list
     end
## ----
