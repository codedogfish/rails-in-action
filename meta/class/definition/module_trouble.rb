# target: include a module to define class method
module MyModule
    def my_method
        puts 'hello'
    end
end

class MyClass
    include MyModule
end

obj = MyClass.new
obj.my_method
MyClass.my_method

