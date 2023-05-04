class Lovisa
    attr_reader :title, :characteristics, :brilliant, :kind
    def initialize(title, characteristics = ['brilliant'])
        @title = title
        @characteristics = characteristics
        @brilliant = true
        @kind = true
    end
    def say(speach)
        "**;* #{speach} **;*"
    end
    def brilliant?
        brilliant
    end
    def kind?
        kind
    end
end

lovisa = Lovisa.new('Lovisa the Mentor')
p lovisa.characteristics
p lovisa.brilliant?