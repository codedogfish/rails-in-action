class Person
    attr_accessor:name
end

class Person1
    def name
        @name
    end
    def name=(val)
        @name=val
    end
end

person = Person.new
person.name="jack"
puts person.name

person1 = Person1.new
person1.name="jessie"
puts person1.name
