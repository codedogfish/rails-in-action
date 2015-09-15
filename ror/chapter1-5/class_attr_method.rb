class Car
    def initialize name,color,weight
        @name = name
        @color = color
        @weight = weight
    end
    attr_reader :name,:color,:power
    attr_writer :power
    attr_accessor :proDate,:company
    attr :weight,false
    attr :model,true
end

car = Car.new "Audi","Black","3670kg"
car.power = "327kW/445dhp"
car.proDate = "2011-4-20"
car.company = "German Audi"
car.model = "Audi Q7 4.2L"
puts "#{car.name}"
puts "#{car.model}"
puts "#{car.color}"
puts "#{car.power}"
puts "#{car.weight}"
puts "#{car.proDate}"
puts "#{car.company}"
