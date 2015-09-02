newDate=Time.new
puts newDate
monthNum=newDate.month
case monthNum
    when 1,3,5,7,8,10,12
        puts "there are 31 days"
    when 4,6,9,11
        puts "there are 30 days"
    when 2
        puts "there are 29 days"
end
