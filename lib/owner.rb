class Owner
  # code goes here
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    @@all = []
  end

  def cats
  end

  def dogs
  end
  
  def buy_cat
  end

  def sell_cat
  end

  def buy_dog
  end

  def  sell_dog
  end

  def walk_dog
  end
end
