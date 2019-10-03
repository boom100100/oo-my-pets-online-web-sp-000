class Owner
  # code goes here
  attr_accessor :cats, :dogs, :pets
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @pets = []
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
    Cat.all.select {|cat|
      cat.owner == self
    }
  end

  def dogs
    Dog.all.select {|dog|
      dog.owner == self
    }
  end

  def buy_cat(name)
    cat = Cat.all.find {|cat|
      cat.name == name
    }
        @cats << cat
        cat.owner = self
      


  end

  def sell_cat
  end

  def buy_dog(dog)
    @dogs << dog
  end

  def  sell_dog
  end

  def walk_dog
  end
end
