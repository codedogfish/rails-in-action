s1,s2 = "abc","def"

# 1
s1.instance_eval do
    def my_swoosh!
        reverse
    end
end

puts s1.my_swoosh!
puts s2.respond_to?(:my_swoosh!)
#puts s1.singleton_methods.grep(/my_swoosh/)
puts s1.singleton_methods
puts ""

# 2
def s1.my_bang!
    upcase
end

puts s1.my_bang!
puts s2.respond_to?(:my_bang!)
#puts s1.singleton_methods.grep(/my_bang/)
puts s1.singleton_methods
puts ""

# 1 equal to 2
# 1 and 2 define a singleton_method by eigenclass

s1.instance_eval do
    puts self.class
    def my_def_method1
        puts self
        puts self.class
        def my_method1
            puts "it is my_method1"
        end
    end
end

s1.my_def_method1
puts s2.respond_to?(:my_method1)
puts s1.singleton_methods
puts ""

# todo 猜想并有待查证
# 当多个 def 嵌套时，current class 为最外层 def 所在的作用域的 current class
# my_def_method2 所在作用域 current class 为 main (Object)
# my_def_method1 所在作用域 current class 为 String
# 相关知识 闭包？
puts self.class
def s1.my_def_method2
    puts self
    puts self.class
    def my_method2
        puts "it is my_method2"
    end
    def self.my_method3
        puts "it is my_method3"
    end
end

s1.my_def_method2
# why
puts s2.respond_to?(:my_method2)
# why?
puts Object.new.respond_to?(:my_method2)
# why!
puts s2.respond_to?(:my_method3)
puts s1.singleton_methods
puts ""

eigenclass = class << s1
    self
end

eigenclass1 = class << s2
    self
end

puts eigenclass == eigenclass1
puts ""
puts "eigenclass"
puts eigenclass.instance_methods.grep(/my_/)
puts ""
puts "eigenclass1"
puts eigenclass1.instance_methods.grep(/my_/)

