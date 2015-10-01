v1 = 1

def log(vars)
    puts "loc_vars:#{vars}"
end

# scope gate: enter class
class MyClass
    v2 = 2
    puts local_variables
    log local_variables

    # scope gate: enter method
    def my_method
        v3 = 3
        puts local_variables
        log local_variables
    end

    puts local_variables
    log local_variables
end

obj = MyClass.new
obj.my_method
obj.my_method
puts local_variables
log local_variables

def a_scope
    $var = "some value"
end

def another_scope
    $var
end

puts a_scope
puts another_scope

# @var is a instance_variable of main
@var = "The top-level @var"

def my_method
    # if the current target object is main
    # it can access the @var
    puts @var
end

class MyClass1
    # the current target object is not main
    def my_method
        # it can not access the @var
        puts @var
    end
end

my_method
MyClass1.new.my_method
