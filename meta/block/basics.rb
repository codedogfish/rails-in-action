def a_method(a,b)
    a + yield(a,b)
end

puts a_method(1,2) {|x,y|(x+y)*4}

def b_method
    # Kernel#block_given? to check the method is called by yield or not
    return yield if block_given?
    'no block'
end

puts b_method
puts b_method {"here's a block"}
