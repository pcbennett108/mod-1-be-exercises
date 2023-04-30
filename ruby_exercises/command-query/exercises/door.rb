class Door
    attr_reader :locked
    def initialize
        @locked = true
    end
    def locked?
        locked
    end
    def unlock
        @locked = false
    end
end