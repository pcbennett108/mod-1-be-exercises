require_relative 'cupcake'

class Cupcakes
    attr_reader :tray, :flavor
    def initialize
        @tray = {}
    end
    def sweetest
        if tray.empty?
            nil
        else
            sweetest = tray.sort_by { |key, value| value }.last
            # flavor = sweetest.first
        end
    end
    def flavor
        sweetest.first
    end
    def <<(cupcake)
        @tray[cupcake.flavor] = cupcake.sugar
    end

end

cupcakes = Cupcakes.new
cupcakes << Cupcake.new('Carrot', 5)
cupcakes << Cupcake.new('Caramel', 12)
cupcakes << Cupcake.new('Chocolate', 8)
# p cupcakes.tray.sort_by { |key, value| value }.last
p cupcakes.flavor
#? Can call sweetest OR flavor but NOT sweetest.flavor ???