$LOAD_PATH << '.'
require "demo1"

class DemoTwo
    include Demo
    def saysomeThing
        puts "Hi, my name is Hoang"
    end

end


res = DemoTwo.new

res.saysomeThing
Demo::showAge()
res.something = "3 dollars"
