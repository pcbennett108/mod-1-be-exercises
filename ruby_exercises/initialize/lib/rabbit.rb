class Rabbit
    attr_reader :name, :num_syllables
    def initialize(attributes)
        @name = attributes[:name]
        @num_syllables = attributes[:num_syllables]

        if num_syllables == 2
             @name << " Rabbit"
        end
    end
end
