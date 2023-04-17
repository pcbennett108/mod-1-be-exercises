class Unicorn
    attr_reader :name, :color
    def initialize(name, color = 'silver')
        @name = name
        @color = color
    end

    def silver?
        @color == 'silver'
    end

    def say(speech)
        "**;* #{speech} **;*"
    end
end

# unicorn1 = Unicorn.new('Barbara', 'purple')
# p unicorn1.silver?
