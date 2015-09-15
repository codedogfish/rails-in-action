class Food
    def initialize name,amount,weight
        @name = name
        @amount = amount
        @weight = weight
    end
end

class Fruit < Food
    def buy 
        puts "Bought #{@amount}'s #{@name}, sum weight is #{@weight}"
    end
end

class Vege < Food
    def initialize name,amount,weight,sortname
        super name,amount,weight
        @sortname = sortname
    end
    def show
        puts "#{@name} is included in #{@sortname}"
        puts "Bought #{@amount}'s #{@name}, sum weight is #{@weight}"
    end
end

apple = Fruit.new "HFX",3,"0.5kg"
apple.buy
huanggua = Vege.new "HG",5,"0.6kg","GL"
huanggua.show
