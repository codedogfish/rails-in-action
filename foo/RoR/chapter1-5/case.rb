newDate=Time.new
weekNum=newDate.wday
case weekNum
    when 0
        puts "Sunday"
    when 1
        puts "Monday"
    when 2
        puts "Thuesday"
    when 3
        puts "Wednesday"
    when 4
        puts "Thursday"
    when 5
        puts "Friday"
    when 6
        puts "Saturday"
    else
        puts "something wrong"
end
