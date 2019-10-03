class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
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
    cats = []
    puts @pets
    @pets.each {|pet|
      if (pet.class = Cat)
        cats << pet
      end
    }
  end

  def dogs
    @pets.select {|pet|
      pet.class == Dog
    }
  end

  def buy_cat(name)
    Cats.all.each {|cat|
      if (cat.name == name)
        @pets << cat
      end

    }
  end

  def sell_cat
  end

  def buy_dog(dog)
    @pets << dog
  end

  def  sell_dog
  end

  def walk_dog
  end
end
