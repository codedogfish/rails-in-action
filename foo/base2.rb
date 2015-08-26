class Parent
    str = "Ruby"
    def showstr
        puts str    #在方法内不能访问局部变量
    end
    class InnerClass
        puts str    #在内部类中不能访问局部变量
    end
end
class Child < Parent
    puts str    #在方法内不能访问父类局部变量
end
