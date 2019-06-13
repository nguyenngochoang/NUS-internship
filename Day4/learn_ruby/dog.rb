
require "./animal"
class Dog < Animal
    def make_a_noise
        supernoise = super
        puts "#{supernoise} ,because I'm a dog"
    end
    
end


doggo = Dog.new("Thinh")
doggo.eat
doggo.sound="bark bark!"
doggo.make_a_noise
doggo.name
# check = doggo.live
puts doggo.instance_variables

animal = Animal.new("bobo")