class Dragon
    attr_reader :name, :rider, :color, :hungry, :meals
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @meals = 0
    end

    def hungry?
        hungry
    end

    def eat
        @meals += 1
        if meals >= 3
            @hungry = false
        end
    end
end

# dragon = Dragon.new('Mnementh', :bronze, 'Flar')
# p dragon.hungry?
# dragon.eat
# p dragon.hungry?