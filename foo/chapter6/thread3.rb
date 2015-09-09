10.times do |count|
    puts "It is the #{count}th times"
    if(count==3)
        thread1=Thread.new 6 do |value|
            value.times do |c|
                puts "thread1 is #{c}th times to run"
            end
        end
        puts thread1.value
    end
end

