class Appointments
    attr_reader :schedule
    def initialize
        @schedule = {}
    end
    def earliest
        if @schedule.empty?
            nil
        else
            nearest = @schedule.min_by { |date, delta| delta }[0]
        end
    end
    def at(date)
        @schedule[date] = date.to_i
    end
end
