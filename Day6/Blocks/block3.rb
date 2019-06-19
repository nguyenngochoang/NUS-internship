def maptesting
    arr = [1,2,3,4,5]
    arr.map do |x|
        x =x*2 
        puts"#{x}"
    end

    
end
maptesting

arr2 = [1,2,3,4,5]

res = arr2.map{|x| x*2}
puts "#{res}"

hash1 = Hash["a"=>1,"b"=>2]
hash2 = Hash[a:1,b:2]

puts "#{hash1['a']}"
puts "#{hash2[:b]}"