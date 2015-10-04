module MyModule
    def my_method
        puts "hello"
    end
end

class MyClass
    class << self
        # include in class's eigenclass
        # call it Class Extension
        include MyModule
    end
end

MyClass.my_method
