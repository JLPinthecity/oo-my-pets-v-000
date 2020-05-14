require 'pry'
class Owner
  attr_reader :name, :species

@@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def say_species
    "I am a #{@species}."
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

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    a = Cat.new(name, self)
    save
  end

  def buy_dog(name)
    a = Dog.new(name, self)
    save
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def walk_cats
  end






end
