class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect, :hunts
    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts = true
    end
    def protects(stark)
        if starks_to_protect.length < 2 && home == stark.location
            starks_to_protect << stark
            stark.make_safe
            @hunts = false
        end
    end
    def leaves(stark)
        stark.make_unsafe
        starks_to_protect.delete(stark)
        if starks_to_protect.empty? then @hunts = true end
        return stark
    end
    def hunts_white_walkers?
        hunts
    end
end


class Stark
    attr_reader :name, :location, :safe, :house_words
    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @safe = false
        @house_words = 'Winter is Coming'
    end
    def make_safe
        @safe = true
    end
    def make_unsafe
        @safe = false
    end
    def safe?
        safe
    end
end

