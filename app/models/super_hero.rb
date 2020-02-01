class SuperHero 
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    save
  end #init

  def save
    @@all << self
  end #save

  def self.all
    @@all 
  end #self.all

end #class 