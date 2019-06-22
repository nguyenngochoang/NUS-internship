    def test
        File.open('./input.txt','r') do |f|
            f.each_line do |line|   
                line_s = line.chomp             
                    case line_s
                    when "Hacker"
                        puts "It's a Hacker!"
                    when "Submission"
                        puts "It's a Submission!".chomp
                    when "TestCase"
                        puts "It's a TestCase!"
                    when "Contest"
                        puts "It's a Contest!"
                    else
                        puts "It's unknown model"
                    end
                end
            end
    end


test