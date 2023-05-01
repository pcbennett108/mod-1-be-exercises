class Bag
    attr_reader :candies
    def initialize
        #@count = 0
        #@empty = true
        @candies = []
    end
    def count
        candies.count
    end
    def empty?
        candies.empty?
    end
    def <<(candy)
        @candies << candy
        #@empty = false
        #@count += 1
    end
    def contains?(candy_name)
        candies.any? do |candy|
            candy.type == candy_name
        end
    end
end
