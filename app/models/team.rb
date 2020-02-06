class Team 
  attr_accessor :name, :motto

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @motto = attributes[:motto]
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