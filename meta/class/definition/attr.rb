class MyClass
    def my_attribute=(value)
        @my_attribute = value
    end

    def my_attribute
        @my_attribute
    end
end

obj = MyClass.new
obj.my_attribute = 'x'
puts obj.my_attribute

class MyClass1
    attr_accessor :my_attribute
end

obj2 = MyClass.new
obj2.my_attribute = 'y'
puts obj2.my_attribute
