require './Employee'

class Salaried < Employee

    attr_reader:salary

    def salary=(value)
        if value==""
            raise "Salay cant be nil"
        else
            @salary = (value/365.0)*14
        end
    end

    def initialize(salary = "0.0")
        self.salary = salary
    end

    def print_pay_stub
        res = super+salary.to_s
        puts "#{res}"
    end
end

hoang = Salaried.new(100)
hoang.name="Hoang"
hoang.print_pay_stub