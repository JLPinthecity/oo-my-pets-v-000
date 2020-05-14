class Owner
  attr_reader :name

@@all = []

  def initialize(name, species)
    @name = name
    @species = "human"
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
