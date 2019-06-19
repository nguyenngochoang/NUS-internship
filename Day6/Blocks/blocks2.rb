

def iteration
    arr = [1,2,3,4,5,6,7,8,9,10]
    res=[]
    for i in 0..arr.size
        # arr[i] = arr[i].to_i
        # arr[i] +=1
        # puts "#{arr[i]}"
        check = yield "#{arr[i]}"
        # puts "#{check}"
    end
    
    puts "#{arr}"

end


iteration do |x|
   x = x.to_i 
#    x+=1
#    true
end


