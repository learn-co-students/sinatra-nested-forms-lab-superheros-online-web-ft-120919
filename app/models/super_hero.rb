class SuperHero 
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    save
  end 

  def save
    @@all << self
  end 

  def self.all
    @@all 
  end
end