class MyClass
    @my_var = 1

    def self.read
        puts @my_var
    end

    def write
        @my_var = 2
    end

    def read
        puts @my_var
    end

end


obj = MyClass.new
obj.write
obj.read
MyClass.read


class C
    @@v = 1
end

class D < C
    def my_method
        puts @@v
    end
end

D.new.my_method

@@gv = 1

class E
    @@gv = 2
end

puts @@gv
