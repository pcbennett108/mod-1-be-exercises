class Monkey
    attr_reader :name, :type, :fav_food
    def initialize(description)
        @name = description[0]
        @type = description[1]
        @fav_food = description[2]
    end
    def favorite_food
        fav_food
    end
end