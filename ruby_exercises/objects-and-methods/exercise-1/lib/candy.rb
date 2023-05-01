class Candy
    attr_reader :type
    def initialize(type)
        @type = type
    end
end

# candy = Candy.new('Sour frogs')
# p candy.type