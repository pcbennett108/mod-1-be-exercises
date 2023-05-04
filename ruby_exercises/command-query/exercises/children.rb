require_relative 'child'

class Children
    attr_reader :eldest, :family
    def initialize
        @eldest = nil
        @family = []
    end
    def <<(child)
        family << child
        family.sort_by! { |child| child.age}
        @eldest = family.last
    end
end
