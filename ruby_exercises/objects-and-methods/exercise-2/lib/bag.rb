require_relative '../lib/candy'

class Bag
    attr_reader :candies
    def initialize
        @candies = []
    end
    def <<(candy)
        candies << candy
    end
    def count
        candies.length
    end
    def empty?
        candies.length == 0
    end
    def contains?(candy)
        grab(candy) != nil
        # found = candies.find { |item| item.type == candy}
        # found != nil
    end
    def grab(candy)
        grabbed = candies.index { |item|  item.type == candy}
        if grabbed then @candies.slice!(grabbed) end
    end
    def take(number)
        @candies.slice!(0, number)
    end
end
