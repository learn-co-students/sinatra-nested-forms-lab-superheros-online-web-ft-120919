class Hero
  attr_accessor :name, :power, :biography

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @power = attributes[:power]
    @biography = attributes[:biography]
    self.save
  end

  def save
    @@all << self
  end

  def all
    @@all
  end

  def clear
    @@all = []
  end
end