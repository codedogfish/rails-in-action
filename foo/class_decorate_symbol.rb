class ScopeClass
    public
    def publicMethod
        puts "public 修饰符修饰的方法可以在任何地方显示访问"
    end
    private
    def privateMethod
        puts "private 修饰符修饰的方法不能通过类对象显示调用"
    end
    protected
    def protectedMethod
        puts "protected 修饰符修饰的方法可以被调用者显式调用"
    end
end
scope = ScopeClass.new
scope.publicMethod

class ScopeClass1
    def publicMethod
        puts "public 修饰符修饰的方法可以在任何地方显示访问"
    end
    def privateMethod
        puts "private 修饰符修饰的方法不能通过类对象显示调用"
    end
    def protectedMethod
        puts "protected 修饰符修饰的方法可以被调用者显式调用"
    end
    public :publicMethod
    private :privateMethod
    protected :protectedMethod
end
scope1 = ScopeClass1.new
scope1.publicMethod
