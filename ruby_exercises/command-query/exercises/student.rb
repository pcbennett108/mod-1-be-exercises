class Student
    attr_reader :gpa, :grades
    def initialize
        @gpa = 2
        @grades= ['F', 'D', 'C', 'B', 'A']
    end
    def grade
        grades[gpa]
    end
    def study
        @gpa += 1
        if @gpa > 4 then @gpa = 4 end
    end
    def slack_off
        @gpa -= 1
        if @gpa < 0 then @gpa = 0 end
    end
end
