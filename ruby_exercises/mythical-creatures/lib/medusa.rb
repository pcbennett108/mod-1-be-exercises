class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end
    def stare(victim)
        statues << victim
        victim.turn_stoned
        if statues.count > 3
            statues.shift.turn_unstoned
        end
    end
end

class Person
    attr_reader :name, :stoned
    def initialize(name)
        @name = name
        @stoned = false
    end
    def stoned?
        stoned
    end
    def turn_stoned
        @stoned = true
    end
    def turn_unstoned
        @stoned = false
    end
end
