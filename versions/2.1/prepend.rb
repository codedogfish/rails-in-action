module Around
    def around(method)
        prepend(Module.new do
            define_method(method) do |*args,&block|
                send(:"before_#{method}") if respond_to?(:"before_#{method}",true)
                result = super(*args, &block)
                send(:"after_#{method}") if respond_to?(:"after_#{method}",true)
                result
            end
        end)
        method
    end
end

class Example
    extend Around

    around def call
        puts "call"
    end
        
    def before_call
        puts "before"
    end

    def after_call
        puts "after"
    end
end

example = Example.new
example.call
