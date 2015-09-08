class Car
    def go
        puts "driving"
    end
end
class Subaru < Car
    def go
        super
        puts "This is a Subaru"
    end
end
subaru=Subaru.new
subaru.go
