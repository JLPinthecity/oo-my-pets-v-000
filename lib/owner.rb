class Owner
  attr_reader :name

@@all = []

  def initialize
    @species = "human"
    save
  end

  def say_species
    @species
  end

  def save
    @@all << self
  end

  def 
end
