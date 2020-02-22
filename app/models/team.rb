class Team
    attr_reader :name, :motto

    @@teams = []

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@teams << self
    end

    def all
        @@teams
    end
end
