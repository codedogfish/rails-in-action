class Car
    def go
        puts "running"
    end
    def method_missing index
        puts "#{index.to_s} missing"
    end
    def self.method_missing default
        puts "#{default.to_s} missing"
    end
end
car = Car.new
car.go
car.run
Car.stop
