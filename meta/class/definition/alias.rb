class MyClass
    def my_method
        puts 'my_method()'
    end

    # alias is a keyword not Module#method
    alias :m :my_method
    
    # alias_method is Module#method not a keyword
    alias_method :m2, :m
end

obj = MyClass.new
obj.my_method
obj.m
