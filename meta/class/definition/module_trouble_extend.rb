module MyModule
    def my_method
        puts "hello"
    end
end

obj = Object.new
obj.extend MyModule
obj.my_method
puts obj.singleton_methods

class MyClass
    extend MyModule
end
MyClass.my_method
