class EscapeCharacters
    attr_reader :phrase
    def initialize
        @phrase
    end
    def quote(phrase)
        "\"#{phrase}\""
    end
end