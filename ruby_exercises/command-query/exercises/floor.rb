class Floor
    attr_reader :dirty
    def initialize
        @dirty = true
    end
    def dirty?
        dirty
    end
    def wash
        @dirty = false
    end
end