class Student
    def getName
        puts "My name is jack"
    end

    puts "在类中直接使用表达式，这是其他语言所不具有的"
    puts "定义了一个 Student 类"
    puts "当前类名是 #{self}"
    puts "类型是 #{self.class}"
end
class Student
    def getSex
        puts "sex: male"
    end
end
jack=Student.new
jessie=Student.new
puts jack.class
puts jessie.class
jack.getName
jessie.getSex()


class Student
    def initialize name,age
        @name = name
        @age = age
    end
    
    def introduce
        puts "Hello Everyone!"
        puts "My name is #{@name}"
        puts "I am #{@age} age"
    end
end

jack=Student.new "JackYu",26
jack.introduce
