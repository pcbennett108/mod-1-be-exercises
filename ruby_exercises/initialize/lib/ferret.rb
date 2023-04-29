class Ferret
    attr_reader :name
    def initialize
        @name = nil
    end
    def give_name(new_name)
        @name = new_name
    end
end