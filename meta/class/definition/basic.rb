# you can put any code in class
class MyClass
    puts 'hello'
end

result = class MyClass
    self
end

puts result
puts result.class

class MyClass
    # 现在当前类是 MyClass
    def my_method
        # ...因此这是 MyClass 的一个实例方法
    end
end


