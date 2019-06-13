class Animal
    def eat
        puts "Wow! Thanks boss"
    end
    @live=true
    attr_accessor:fur
    attr_accessor:sound
    attr_reader:name

    def make_a_noise
         "#{@sound}"
    end

    def initialize(value)
        @name =value
        puts "#{@name}"
    end

end
