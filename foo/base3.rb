$number = 10
class Person
    puts "I am #$number"
end
class Circle
    puts "I am #$number too"
    class Rectangle
        puts "I am #$number too too"
    end
end
def show
    puts "I am #$number too too too"
end
show
