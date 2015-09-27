class Resource
    def do_something
        puts "do something"
    end

    def dispose
        puts "dispose and release resource"
    end
end

module Resource1
    def do_something
        puts "do something"
    end

    def self.dispose
        puts "dispose and release resource"
    end
end

module Kernel
    def my_using(resource)
        begin
            yield
        ensure
            resource.dispose
        end
    end
end

res = Resource.new
my_using res do
    res.do_something
end
using Resource1 do
    Resource1.do_something
end
