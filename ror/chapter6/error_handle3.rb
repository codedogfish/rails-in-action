begin
    result = 15/0
rescue SyntaxError
    putis "SyntaxError"
rescue ZeroDivisionError
    puts "ZeroDivisionError"
end
