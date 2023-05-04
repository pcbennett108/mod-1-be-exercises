require_relative 'cupcake'

class Cupcakes
    attr_reader :sweetest, :tray
    def initialize
        @sweetest = nil
        @tray = []
    end
    def <<(cupcake)
        tray << cupcake
        tray.sort_by! { |item| -item.sugar }
        @sweetest = tray.first
    end

end



cupcakes = Cupcakes.new
cupcakes << Cupcake.new('Carrot', 5)
cupcakes << Cupcake.new('Caramel', 12)
cupcakes << Cupcake.new('Chocolate', 8)

p cupcakes.tray
p cupcakes.sweetest.flavor