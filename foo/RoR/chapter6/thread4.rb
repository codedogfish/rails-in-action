Thread.new do
    Thread.pass
    puts "current is thread1"
end
Thread.new do
    puts "current is thread2"
end
