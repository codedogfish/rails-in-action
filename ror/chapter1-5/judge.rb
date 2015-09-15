judge = true
while judge
    c = 15
    puts "please input a number between 0 to 100"
    d = gets
    if c > d.to_i
        puts "your input is smaller then the number"
    elsif c < d.to_i
        puts "your input is larger then the number"
    else
        puts "you are right"
        puts "press any key to quit"
        gets
        judge = false
    end
end
