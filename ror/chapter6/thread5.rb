thread1 = Thread.start do
    100.times do |value|
        puts "thread1--#{value}"
        if value > 8
            Thread.kill thread1
        end
    end
end
thread2 = Thread.start do
    100.times do |value|
        puts "thread2--#{value}"
        if value > 10
            Thread.exit
        end
    end
end
