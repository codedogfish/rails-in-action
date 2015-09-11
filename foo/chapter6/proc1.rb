def getresult y
    return Proc.new {|x|
        x*y
    }
end
number1 = getresult 5
number2 = getresult 5
puts number1.call 2
puts number2.call 5
