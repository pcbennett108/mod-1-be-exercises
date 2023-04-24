class MadLib
    attr_accessor :a_noun, :a_verb, :a_adjective, :a_adverb
    def initialize
        @a_noun
        @a_verb
        @a_adjective
        @a_adverb
    end

    def noun(n)
        @a_noun = n
    end
    def verb(v)
        @a_verb = v
    end
    def adjective(a)
        @a_adjective = a
    end
    def adverb(av)
        @a_adverb = av
    end

    def result
        "Do you #{a_verb} your #{a_adjective} #{a_noun} #{a_adverb}? That's hilarious!"
    end
end
