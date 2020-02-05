class Team
  attr_accessor :name, :motto
  attr_reader :members

  def initialize(name, motto)
    @name = name
    @motto = motto
    @members = []
  end

  def add_member(member)
    @members << member
  end
end