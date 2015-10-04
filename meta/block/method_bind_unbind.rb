class MyClass
    def initialize(value)
        @x = value
    end

    def my_method
        @x
    end
end

object = MyClass.new(1)
m = object.method :my_method
puts m.call
object2 = MyClass.new(2)
# unbind the method then bind to another object
# it's pretty cool
m2 = m.unbind.bind(object2)
puts m2.call
