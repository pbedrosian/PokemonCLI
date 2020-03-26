class API
  @@all_stats = []

  def self.info(index)
    url = "https://pokeapi.co/api/v2/pokemon/#{index}/"
    info = HTTParty.get(url)
    name = info["species"].fetch("name").capitalize # -- this gets the pokemon name
    full_stats = info["stats"]
    stats = full_stats.collect {|n| n.fetch("base_stat")} # -- this gets the stats
    index = info["id"] # -- this gets the pokemon index
    find_type = info["types"]
    type = find_type.collect {|n| n["type"].fetch("name")}

    @@all_stats += [name, stats, index, type]
    index = Pokemon.new
    self.all.clear
  end

  def self.all
    @@all_stats
  end

  def self.create_objects
    index = 1
    while index <= 151 do
      self.info(index)
      index += 1
    end
  end
end
