class MyOpenStruct
    def initialize
        @attributes = {}
    end
    
    def method_missing(name,*args)
        attribute = name.to_s
        if attribute =~ /=$/
            # chop is remove the last char
            @attributes[attribute.chop] = args[0]
        else
            @attributes[attribute]
        end
    end
end

icecream = MyOpenStruct.new
icecream.flavor = "vanilla"
icecream.flavor
