class Owner
  # code goes here
  attr_reader :species, :name
  @@all

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def say_species
    return @species
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
