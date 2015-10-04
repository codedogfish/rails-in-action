class MyClass
    def my_method
        puts "my_method"
    end
end

obj = MyClass.new
obj.my_method

def obj.my_singleton_method
    puts "my_singleton_method"
end

class << obj
    # enter the eigenclass of MyClass
end

# get the eigenclass of MyClass
eigenclass = class << obj
    self
end

puts "eigenclass.class"
puts eigenclass.class
puts "obj.singleton_methods.grep(/my_/)"
puts obj.singleton_methods.grep(/my_/)
puts "eigenclass.instance_methods.grep(/my_/)"
puts eigenclass.instance_methods.grep(/my_/)
