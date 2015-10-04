class MyClass
    def self.my_method
        puts "my_method is class method"
    end
end

def MyClass.my_method1
    puts "my_method1 is class method"
end

class << MyClass
    def my_method2
        puts "my_method2 is class method"
    end
end

class MyClass
    class << self
        def my_method3
            puts "my_method3 is class method"
        end
    end
end

# the above is four ways to define a class method
# the follow is litte mice 

class Object
    def eigenclass
        class << self;self;end
    end
end

puts "abc".eigenclass
puts "abc".class


class C
    def a_method
        puts 'C#a_method()'
    end
end

class D < C
end

obj = D.new
obj.a_method

class << obj
    def a_singleton_method
        'obj#a_singleton_method'
    end
end

puts obj.eigenclass.superclass

class << "abc"
    class << self
        puts self
        # self is the eigenclass of abc's eigenclass
        self
    end
end

class C
    class << self
        def a_class_method
            'C.a_class_method()'
        end
    end
end

puts C.eigenclass
puts D.eigenclass
puts D.eigenclass.superclass
puts C.eigenclass.superclass

=begin 

                   +------------+       +----------------+ 
                   |            |       |                | 
                   |   Object   +-----> |     #Object    | 
                   |            |   C   |                | 
                   +------+-----+       +--------+-------+ 
                          |                      |         
                          | S                    | S       
                          |                      |         
                   +------+-----+       +--------+-------+ 
                   |            |       |                | 
                   |     C      +-----> |        #C      | 
                   |  a_method  |   C   | a_class_method | 
                   |            |       |                | 
                   +------+-----+       +--------+-------+ 
                          ^                      ^         
                          | S                    | S       
                          |                      |         
                   +------+-----+       +--------+-------+ 
                   |            |       |                | 
                   |     D      +-----> |        #D      | 
                   |            |   C   |                | 
                   +------+-----+       +----------------+ 
                          |                                
                          | S                              
                          |                                
+---------+      +--------+--------+                       
|         |      |                 |        C=EigenClass   
|   obj   +----> |     #obj        |        S=SuperClass   
|         |  C   | a_single_method |                       
+---------+      |                 |                       
                 +-----------------+                       
=end
