class Hobbit
    attr_reader :name, :disposition, :age, :adult
    def initialize(name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
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

end



# hobbit1 = Hobbit.new("Samwise", "Loyal")
# p hobbit1.age
# p hobbit1.name
# p hobbit1.adult
# p hobbit1