my_var = "Success"

MyClass = Class.new do
    # 现在可以在这里打印 my_var 了...
    puts "#{my_var} in the class definition"

    def my_method
        # ...但是在这里怎样把它打印出来呢？
    end
end

# class definition throught `Class.new` only run when the Class is accessed
MyClass
