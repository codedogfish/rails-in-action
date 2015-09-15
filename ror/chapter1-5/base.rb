#常量定义大写开头
Weekday=7
puts "As all known, there are #{Weekday} days in one week"

class Parent
    NAME = "father"
    puts NAME
    def info
        puts NAME
    end
    class TestParent
        puts NAME
    end
end

class Child < Parent
    puts NAME
end

puts Child::NAME

class First
    INFO = "Ruby"
end

class Second
    INFO = "Hello"
    class FirstChild < First
        puts INFO
        puts First::INFO
    end
end

