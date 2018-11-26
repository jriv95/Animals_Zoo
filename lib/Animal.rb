class Animal

  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
    @zoo = zoo
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select { |animal| animal.species == species  }
  end



end
