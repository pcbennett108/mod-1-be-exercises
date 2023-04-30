class Adult
    attr_reader :sober, :drinks
    def initialize
        @sober = true
        @drinks = 0
    end
    def sober?
        sober
    end
    def consume_an_alcoholic_beverage
        @drinks += 1
        if @drinks > 2
            @sober = false
        end
    end
end