class Zoo

  attr_reader :name, :location

  @@all = []

  def initialize(name,location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self }
  end

  def animal_species
    unique_animals = animals.map do |animal|
      animal.species
    end
    unique_animals.uniq!
  end

  def find_by_species(species)
    animals.select { |animal| animal.species == species }
  end

  def animal_nicknames
    animals.map do |animal|
      animal.nickname
    end
  end

  def self.find_by_location(location)
    self.all.select {|zoo| zoo.location == location}
  end


end
