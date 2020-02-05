class Superhero
  attr_accessor :name, :power, :bio
  attr_reader :team
  
  def initialize(name, power, bio, team_obj)
    @name = name
    @power = power
    @bio = bio
    self.team = team_obj
  end

  def team=(team_obj)
    @team = team_obj
    team_obj.add_member(self)
  end
end