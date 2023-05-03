class Centaur
    attr_reader :name, :breed, :cranky, :standing, :work, :laying
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @laying = false
        @work = 0
    end
    def shoot
        if cranky || laying
            "NO!"
        else
            working
            "Twang!!!"
        end
    end
    def run
        if laying
            "NO!"
        else
            working
            "Clop clop clop clop!"
        end
    end
    def sleep
        standing ? "NO!" : @cranky = false
    end
    def lay_down
        @standing = false
        @laying = true
    end
    def stand_up
        @standing = true
        @laying = false
    end
    def drink_potion
        if !standing
            "NO!"
        elsif !cranky
            "BLuuaggah! Gag! Wretch!"
        else
            @cranky = false
            "Gulp!"
        end
    end
    def laying?
        laying
    end
    def cranky?
        cranky
    end
    def standing?
        standing
    end
    def working
        @work += 1
        if work >= 3 then @cranky = true end
    end
end
