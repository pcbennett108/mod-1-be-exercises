class Retirement
    def initialize
    end
    def calculate(current_age, retirement_age)
        if current_age < 0
            "Error. Age cannot be negative."
        elsif retirement_age < 0
            "Error. Retirement age cannot be negative."
        else
            years_remain = retirement_age - current_age
            current_year = 2015 #Time.new.year
            year_to_retire = current_year + years_remain
            "You have #{years_remain} years left until you can retire. It is #{current_year}, so you can retire in #{year_to_retire}."
        end
    end
end