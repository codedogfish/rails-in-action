t=Thread.new do
    puts "Today is a sunny day"
end
today = "rainy"
t1=Thread.start today do |w|
    puts "Today is a #{w} day"
end
Thread.new do
    puts "It's a new thread"
end
t2=Thread.current
puts "Current thread is  #{t2}"
