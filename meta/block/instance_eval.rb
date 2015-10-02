class MyClass
    def initialize
        @v = 1
    end
end

obj = MyClass.new
# the block is a Context Probe
obj.instance_eval do
    puts self
    puts @v
end
v = 2
obj.instance_eval {@v=v}
obj.instance_eval {puts @v}

# instance_exec can send args to the 'Context Probe' block
obj.instance_exec(2) {|arg|puts @v*arg}
