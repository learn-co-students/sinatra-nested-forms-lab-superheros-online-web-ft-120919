class Members

    attr_reader :name, :power, :bio

    @@all = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
    end

    def self.all
        @@all
    end


end