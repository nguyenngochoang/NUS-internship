class Dad
    
    def name=(name)
        if name == ""
            raise "name can't be nil"
        else
            @name = name
        end
    end

    attr_reader:name

    def mynameis
        puts "#{name}"
    end

    def initialize(name="optional")
        self.name = name
        puts "Hello, I'm  #{self.name}!"
           
    end
    
end

class Son < Dad
    def initialize
        puts "Hey, Dad !"
    end
end

class Daughter < Dad

end


dad = Dad.new("Hoang")
son = Son.new
daughter = Daughter.new

dad.mynameis

