class MyClass
    def initialize
        @y = 2
    end
    def my_method
        @x = 1
        puts @x
        puts @y
        # 'binding' is the current scope
        binding
    end
end

b = MyClass.new.my_method

eval "@x+=1", b
eval "puts @x", b
eval "puts @y", b
eval "puts self.inspect", b

class AnotherClass
    def my_method
        eval "puts self.inspect", TOPLEVEL_BINDING
    end
end

@z = 3

AnotherClass.new.my_method
puts inspect
