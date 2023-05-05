# require_relative '../lib/costume'
# require_relative '../lib/bag'
# require_relative '../lib/candy'

class TrickOrTreater
    attr_reader :dressed_up_as, :bag, :sugar_level
    def initialize(costume)
        @dressed_up_as = costume.style
        @bag = Bag.new
        @sugar_level = 0
    end
    def has_candy?
        !bag.empty?
    end
    def candy_count
        bag.count
    end
    def eat
        @sugar_level += bag.take(1).first.sugar
        
    end
end
