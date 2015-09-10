class MyException < Exception
end
def method(num)
    puts "50/#{num} is #{50/num}"
end
begin
   # method 0
rescue ZeroDivisionError
    raise MyException,"there is a exception,logging"
end
def divided a,b
    raise MyException if b==0
    puts "result: #{a/b}"
end
begin
    puts "invoke divided by 16,4"
    divided 16,4
    puts "*"*20
    puts "invoke divided by 20,0"
    divided 20,0
rescue MyException
    puts "there is a exception when invoke divided"
    puts "Type:MyException"
end
