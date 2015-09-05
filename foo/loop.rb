start=1
result=10
loop do
    result+=start
    start+=1
    if start>100 then
        puts "sum of 1..100 is #{result}"
        break
    end
end
