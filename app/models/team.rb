class Team
  attr_accessor :name, :motto, :heroes

  def initialize(name, motto)
    @name = name
    @motto = motto
    @heroes = []
  end #init

  def add_hero(hero)
    @heroes << hero 
  end #add_hero

end #class