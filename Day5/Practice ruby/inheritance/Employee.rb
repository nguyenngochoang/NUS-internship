class Employee

    attr_reader:name
    

    def name=(value)
        if value==""
            raise "Please give me a name..."
        else
            @name = value
        end
    end

    def initialize(name="Nobody")
        self.name = name
    end

    def print_name
        puts "Employee's name is : #{name}"
    end

    def print_pay_stub
        "#{name}'s salary is "
    end
end