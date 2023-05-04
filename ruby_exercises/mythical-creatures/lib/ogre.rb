class Ogre
    attr_reader :name, :home, :swings
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
    end
    def encounter(human)
        human.encounter_ogre
        if human.notices_ogre? then swing_at(human) end
    end
    def swing_at(human)
        @swings += 1
        if swings = 2 then human.gets_hit end
    end
    def apologize(human)
        human.wake_up
    end
end


class Human
    attr_reader :name, :encounter_counter, :knocked_out
    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @knocked_out = false
    end
    def encounter_ogre
        @encounter_counter += 1
    end
    def notices_ogre?
        encounter_counter > 0 && encounter_counter % 3 == 0 ? true : false
    end
    def knocked_out?
        knocked_out
    end
    def gets_hit
        @knocked_out = true
    end
    def wake_up
        @knocked_out = false
    end
end
