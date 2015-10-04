def add_method_to(a_class)
    # class_eval make def think current class is a_class
    a_class.class_eval do
        def m
            puts "hello"
        end
    end
end

class MyClass
end

add_method_to MyClass
obj = MyClass.new
obj.m
