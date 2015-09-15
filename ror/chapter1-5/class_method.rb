class Car
    def start person,power
        if power then
            puts person+" launching"
        else
            puts person+" shuting down"
        end
    end
    
    def go speed
        puts "current speed: #{speed.to_s}km/h"
    end
    
    def getBrand
        puts "the brand of car is Subaru"
    end
end

car = Car.new
car.start "jack",true
car.go 80
car.getBrand()

class Clac
    def sum(*nums)
        result = 0
        nums.each do |n|
            result += n
        end
        puts "sum args: #{nums}"
        puts "sum: #{result}"
    end
end

c = Clac.new
c.sum 1,2,3,4
c.sum 500,41,64,123,440

class Student
    def introduce name="jack",age=26
        puts "Hello everyone!"
        puts "My name is #{name},I am #{age}"
    end
end

person=Student.new
person.introduce
person.introduce "jessie"
person.introduce "jessie",24


class Clac
    def add number1,number2
        return number1+number2
    end
    def minus number1,number2
        return number1-number2
    end
end
c=Clac.new
result1=c.add 200,400
result2=c.minus 600,200
puts "200 add 400 equal #{result1}"
puts "600 minus 200 equal #{result2}"

class Person
    def Person.Speak
        puts "speak is human's instinct"
    end
    def self.eat
        puts "eat is animal's instinct"
    end
end

Person.Speak
Person.eat

class World
    def gettype tname
        puts "I am in #{tname} category"
    end
end
person=World.new
def person.say
    puts "Good Good Study,Day Day Up"
end
person.gettype "Human"
person.say
machine=World.new
def machine.age
    puts "I have keep working for 16 years"
end
machine.gettype "Machine"
machine.age
