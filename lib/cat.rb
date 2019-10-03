class Cat
  # code goes here
  attr_accessor :owner, :mood
  #attr_writer
  attr_reader :name
  @@all = []

  def initialize(name = "", owner = "", mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
    self
  end

  def all
    @@all
  end


end
