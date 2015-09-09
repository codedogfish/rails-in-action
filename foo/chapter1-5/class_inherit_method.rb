class Food
    def initialize name,amount,weight
        @name = name
        @amount = amount
        @weight = weight
    end
    def buy
        puts "It's normal food"
        puts "Name: #{@name}, Amount: #{@amount}, Weight: #{@weight}"
    end
end
class Fruit < Food
    def buy price
        puts "It's fruit"
        puts "Name: #{@name}, Amount: #{@amount}, Weight: #{@weight}, Pirce: #{price}"
    end
end
noodle = Food.new "Noodle",4,"3kg"
noodle.buy
orange = Fruit.new "Orange",8,"1.2kg"
orange.buy 5.4
