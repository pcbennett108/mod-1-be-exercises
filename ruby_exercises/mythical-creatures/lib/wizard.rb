class Wizard
    attr_reader :name, :bearded, :incantation, :rested, :spells_cast
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @spells_cast = 0
    end

    def bearded?
        bearded
    end

    def incantation(incant)
        "sudo #{incant}"
    end

    def rested?
        return false if spells_cast >= 3
        rested
    end

    def cast
        @spells_cast += 1
        "MAGIC MISSILE!"
        # if @spells_cast < 3
        #     "MAGIC MISSILE!"
        # elsif @spells_cast == 3
        #     @rested = false
        #     "MAGIC MISSILE!"
        # else
        #     "Too tired to cast,"
        # end
    end
end

# wizard2 = Wizard.new('Sal', bearded: true)
# p wizard2
# p wizard2.bearded?
# p wizard2.rested?
# p wizard2.cast
# p wizard2.cast
# p wizard2.rested?
# p wizard2.cast
# p wizard2.rested?