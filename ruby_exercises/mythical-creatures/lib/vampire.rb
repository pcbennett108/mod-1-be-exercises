class Vampire
    attr_reader :name, :pet, :thirsty
# Tried both with & without thirsty as a param.. both work. Best?
    def initialize(name, pet = 'bat')
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

# vamp1 = Vampire.new('Dracula')
# vamp1.drink
# p vamp1.drink