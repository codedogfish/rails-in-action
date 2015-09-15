class MyNewException < Exception
    def ErrorMessage
        return "custom exception message"
    end
end
def new_method a,b
    puts "#{a} divid #{b} is #{a/b}"
    raise MyNewException
end
begin
    new_method  10,2
rescue MyNewException => e
    puts "exception #{e}"
    puts "#{e.ErrorMessage}"
end
