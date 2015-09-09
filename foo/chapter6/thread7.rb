t1 = Thread.new { loop {} }
t2 = Thread.new { sleep 5 }
t3 = Thread.new { Thread.stop }
t4 = Thread.new { Thread.exit }
t5 = Thread.new { raise "exception" }
s1 = t1.status
s2 = t2.status
s3 = t3.status
s4 = t4.status
s5 = t5.status
puts "#{t1.status}"
puts "#{t2.status}"
puts "#{t3.status}"
puts "#{t4.status}"
puts "#{t5.status.inspect}"
