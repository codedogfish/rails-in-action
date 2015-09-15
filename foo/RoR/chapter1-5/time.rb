today=Time.new
puts "current time: #{today}"
puts "current year: #{today.year}"
puts "current month: #{today.month}"
puts "current day: #{today.day}"
puts "current hour: #{today.hour}"
puts "current minute: #{today.min}"
puts "current second: #{today.sec}"
puts "current millisecond: #{today.usec}"

localTime1=Time.local(2012)
localTime2=Time.local(2012,12)
localTime3=Time.local(2012,12,20)
localTime4=Time.local(2012,12,20,17)
localTime5=Time.local(2012,12,20,17,50)
localTime6=Time.local(2012,12,20,17,50,40)
localTime7=Time.local(2012,12,20,17,50,40,2268)
puts localTime1
puts localTime2
puts localTime3
puts localTime4
puts localTime5
puts localTime6
puts localTime7
mkTime1=Time.mktime(2012)
mkTime2=Time.mktime(2012,12)
mkTime3=Time.mktime(2012,12,20)
mkTime4=Time.mktime(2012,12,20,17)
mkTime5=Time.mktime(2012,12,20,17,50)
mkTime6=Time.mktime(2012,12,20,17,50,40)
mkTime7=Time.mktime(2012,12,20,17,50,40,2268)
puts mkTime1
puts mkTime2
puts mkTime3
puts mkTime4
puts mkTime5
puts mkTime6
puts mkTime7

puts today.strftime("%Y-%m-%d %H:%M:%S")
puts today.strftime("%x")
puts today.strftime("%B")
puts today.strftime("%a")
puts today.strftime("%A")

today_array = today.to_a
puts "#{today_array}"
puts "day of year: #{today.yday}"
puts "day of month: #{today.mday}"
puts "day of week: #{today.wday}"

time1 = Time.mktime(2012,1,6,17,00,45)
puts "past time: #{time1}"
puts "current time: #{Time.new}"
result = Time.new - time1
puts "#{result.to_s}s"
