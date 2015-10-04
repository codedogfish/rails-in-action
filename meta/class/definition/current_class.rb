class MyClass
    def method_one
        def method_two
            puts "hello"
            puts self.class
        end
    end
end

obj = MyClass.new
obj2 = MyClass.new
begin
    obj2.method_two
rescue
    puts "obj2.method_two error"
    # def method_two current class is self.class
    obj.method_one
ensure
    obj2.method_two
end


class MyClassTwo
end

#obj2 = MyClassTwo.new
#m = obj.method :method_one
## bind argument must be an instance of MyClass
#m2 = m.unbind.bind(obj2)
#m2.call
#obj2.method_two

