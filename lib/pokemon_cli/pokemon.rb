class Pokemon
  @@all = []

  attr_accessor :name, :speed, :special_defense, :special_attack, :defense, :attack, :hp, :index, :type

  def initialize
    attr_set
    @@all << self
  end

  def self.all
    @@all
  end

  def attr_set
    self.name = API.all[0]
    self.speed = API.all[1][0]
    self.special_defense = API.all[1][1]
    self.special_attack = API.all[1][2]
    self.defense = API.all[1][3]
    self.attack = API.all[1][4]
    self.hp = API.all[1][5]
    self.index = API.all[2]
    self.type = API.all[3].map {|a| a.capitalize}
  end

  def self.get_stats(index)
    self.all.select do |object|
      if object.index == index
      puts "Name: #{object.name} -- ##{object.index}"
      puts "Type: #{object.type.join(', ')}"
      puts "--------------------------"
      puts "HP: #{object.hp}"
      puts "Attack: #{object.attack}"
      puts "Defense: #{object.defense}"
      puts "Speed: #{object.speed}"
      puts "Special Attack: #{object.special_attack}"
      puts "special_defense: #{object.special_defense}"
    end

   end
  end
end
