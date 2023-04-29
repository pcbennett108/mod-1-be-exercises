class Lion
    attr_reader :name, :sound
    def initialize(description)
        @name = description[:name]
        @sound = description[:sound]

    end
end

