class Cupcake
    attr_reader :flavor, :sugar
    def initialize(flavor, sugar)
        @flavor = flavor
        @sugar = sugar
    end
end

#p Cupcake.new('Carrot', 5)
