class Owner
  attr_accessor :name

@@all = []

  def initialize(species = "human")
    @species = species
    save
  end

  def say_species
    @species
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end


end
