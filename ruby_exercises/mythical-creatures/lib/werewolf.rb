class Werewolf
    attr_reader :name, :location, :human, :wolf, :hungry, :victim_count
    def initialize(name, location = nil)
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
        @victim_count = 0
    end
    def human?
        human
    end
    def wolf?
        wolf
    end
    def hungry?
        hungry
    end
    def change!
        @human = !@human
        @wolf = !@wolf
        @hungry = true
    end
    def feed(victim)
        if !human 
            @victim_count += 1
            @hungry = false
            victim.dies!
        end
    end
end
