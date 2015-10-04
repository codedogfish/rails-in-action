str = "just a regular string"
str1 = "another regular string"

# define a singleton method
def str.title?
    self.upcase == self
end

puts str.title?
puts str.methods.grep(/title?/)
puts str.singleton_methods
puts str1.methods.grep(/title?/)
puts str1.singleton_methods

class MyClass
    def self.method_one
        puts "method_one"
    end
    
    # class method is a singleton method of class (class is a object in ruby)
    def MyClass.method_two
        puts "method_two"
    end
end

MyClass.method_one
MyClass.method_two
