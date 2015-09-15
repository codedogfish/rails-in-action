class Car
    def initialize name,color
        @name = name
        @color = color
    end
    def name
        return @name
    end
    def color
        return @color
    end
end
car = Car.new "Subaru","White"
puts "This car's brand is #{car.name} and it's color is #{car.color}"

class Car1
    def name=(value)
        @name=value
    end
    def color=(value)
        @color=value
    end
    def name
        return @name
    end
    def color
        return @color
    end
end

car1 = Car1.new
car1.name = "Land Rover"
car1.color = "Red"
puts "This car's brand is #{car1.name} and it's color is #{car1.color}"
