
def something
    puts "say something..."
    yield "Hoang 21","60"
    # block.call("hoang","21")
    puts "out of block"
end
hash = {a:1,b:2}
something do |a,b|
    hash.each do |key,val|
        puts "#{val}"
        puts "#{key}"
    end

    puts "#{a}"
    puts "#{b}"
end

