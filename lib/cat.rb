class Cat
  # code goes here
  attr_accessor :name, :owner
  #attr_writer
  #attr_reader

  def initialize(name = "", owner = "")
    @name = name
    @owner = owner
  end


end
