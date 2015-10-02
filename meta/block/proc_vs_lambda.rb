def double(callable_object)
    callable_object.call * 2
end

l = lambda {return 10}
puts double l

#def another_double(callable_object)
#    callable_object.call * 2
#end
# proc_vs_lambda.rb:12:in `block in <main>': unexpected return (LocalJumpError)
# because can not return from top scope (main)
#p = Proc.new {return 10}
#another_double p

def another_double
    # return from the scope where this proc defined
    p = Proc.new {return 10}
    result = p.call
    return result*2 # unreachable code!
end

puts another_double

def third_double
    l = lambda {return 10}
    result = l.call
    return result*2
end

puts third_double

def last_double
    p = Proc.new {return 10}
    return p.call * 2
end

puts last_double

