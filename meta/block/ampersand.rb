# ampersand = '&'
def math(a,b)
    yield(a,b)
end

def teach_math(a,b,&operation)
    puts operation.class
    puts "Let's do the math:o"
    puts operation.call(a,b)
    #puts operation(a,b)
    puts math(a,b,&operation)
end

teach_math(2,3){|x,y|x+y}
