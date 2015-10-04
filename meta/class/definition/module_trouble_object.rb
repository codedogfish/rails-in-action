module MyModule
    def my_method
        puts 'hello'
    end
end

obj = Object.new
class << obj
    # included in a object's eigenclass
    # make the method defined in MyModule become obj's singleten method
    include MyModule
end

obj.my_method
puts obj.singleton_methods
