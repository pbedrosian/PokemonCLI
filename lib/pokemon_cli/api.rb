class API

  @@all = []
  def self.list_names
    names = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=151')
    # names = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=10')
    index = 0
    puts names["results"].collect { |p| "#{index += 1}. #{p["name"].capitalize}"}

  end

end
