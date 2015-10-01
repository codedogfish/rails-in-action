class Roulette
    def method_missing(name,*args)
        person = name.to_s.capitalize
        3.times do 
            number = rand(10)+1
            puts "#{number}..."
        end
        # the varible 'number' is not define in the current scope
        # so...it make ruby think it is a method call of current target object 'self'
        # then it go into another method_missing again
        "#{person} got a #{number}"
    end
end

number_of = Roulette.new
put number_of.bob
