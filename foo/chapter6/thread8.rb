t1=Thread.new {loop{sleep 1}}
t2=Thread.new {loop{sleep 1}}
t3=Thread.new do
    puts "#{Thread.main.status}"
    puts "#{Thread.main.alive?}"
end
t2.priority=3
puts "#{t1.priority}"
puts "#{t2.priority}"
puts "#{t3.priority}"
