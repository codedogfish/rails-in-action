class Person
    def initialize name,age,sex
        @name = name
        @age = age
        @sex = sex
    end
    def eat
        puts "eat some food"
    end
    def sleep
        puts "take a rest"
    end
    def say
        puts "have a chat"
    end
end
jack = Person.new "jack",26,"male"
jack.eat
jack.sleep
jack.say

class Student < Person
    def id=(value)
        @id=value
    end
    def id
        return @id
    end
    def school=(value)
        @school=value
    end
    def school
        @school
    end
    def study
        puts "Good Good Study, Day Day Up"
    end
end

jessie = Student.new "jessie",25,"female"
jessie.id = 1018
jessie.school="XNMZDX"
jessie.say
puts "I am study in #{jessie.school}, my student no: #{jessie.id}"
jessie.study
jessie.sleep
