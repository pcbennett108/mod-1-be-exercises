class Hobbit
    attr_reader :name, :disposition, :age, :adult, :old, :has_ring, :is_short
    def initialize(name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
        @has_ring = false
        @is_short = true
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        if @age >= 33
            @adult = true
        end
        @adult
    end

    def old?
        if @age >= 101
            @old = true
        end
        @old
    end

    def has_ring? # Only changes has_ring if checked, not on creation.
        if @name == "Frodo"
            @has_ring = true
        end
        @has_ring
    end

    def is_short?
        @is_short
    end
end