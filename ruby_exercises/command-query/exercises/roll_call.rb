class RollCall
    attr_reader :longest_name, :names
    def initialize
        @longest_name = nil
        @names = []
    end
    def <<(name)
        @names << name
        @longest_name = @names.max_by {|name| name.length}
        #@longest_name = @names.max_by(&:length)
    end
end

# roll_call = RollCall.new
# p roll_call.longest_name
# roll_call << 'Oda'
# roll_call << "Ann"
# roll_call << "Alexandra"
# roll_call << "Roger"
# p roll_call.names
# p roll_call.longest_name

#people.max_by(&:length)