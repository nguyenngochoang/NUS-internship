require './Employee'

class Hourly < Employee

    attr_reader:hourly_wage
    attr_reader:hours_per_week

    def hourly_wage=(value)
        if value==""
            raise "hourly_wage cant be nil"
        else
            @hourly_wage = value
        end
    end

    def hours_per_week=(value)
        if value==""
            raise "hours_per_week cant be nil"
        else
            @hours_per_week = value
        end

    end

    def finalSalary
        hourly_wage*hours_per_week*2
    end

    def initialize(hourly_wage,hours_per_week)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub
        res = super+finalSalary.to_s
        puts "#{res}"
    end
    
end


jack = Hourly.new(20,56)
jack.name = "Jack"
jack.hourly_wage

jack.print_pay_stub
