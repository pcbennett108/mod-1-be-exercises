require_relative 'child'

class Children
    attr_reader :family
    def initialize
        @family = {}
    end
    def eldest
        nil
    end
    def <<(child)
        @family[child.name] = child.age
    end

end


children = Children.new
children << Child.new('Sarah', 5)

p children.family