class Hello
    attr_reader :name
    def initialize(name = "Jen")
        @name = name
    end
    def greet(person)
        "Hello, #{person}, nice to meet you!"
    end
end