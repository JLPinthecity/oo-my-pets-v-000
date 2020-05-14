class Owner
  attr_reader :name

  def initialize
    @species = "human"
  end

  def say_species
    @species
  end
end
