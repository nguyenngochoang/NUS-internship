#ruby doesn't support ++ operator, can use succ method instead

#check 18+
def check_18(age)
  unless age >= 18
     puts "You dont have permission to watch this!"
  else
    puts "Ok, let's watch JAV"
  end
end


#traverse through an int array
arr = Array.new(10){ |i| i.to_i}
arr.each do |t|
  puts "#{t}"
end

#find LCM of 2 numbers
def findlcm(a,b)
  a.lcm(b)
end

#exception in ruby

def exception_testing(a,b)
  begin
    res=a/b
  rescue Exception => e
    puts "Divide by zero exception!"

  else
    res
  ensure
    puts "function executed!"

  end
end

