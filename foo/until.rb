start=1
number=10
result=1
until start>number do
    result*=start
    start+=1
end
puts "factorial of #{number} is #{result}"
