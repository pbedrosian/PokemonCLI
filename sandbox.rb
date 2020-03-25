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
