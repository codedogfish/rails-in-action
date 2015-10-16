# around alias steps:
# 1.set alias for method
# 2.redefine the method
# 3.call the origin_method by alias
class String
    alias :real_length :length

    def length
        real_length > 5 ? 'long' : 'short'
    end
end

str = "hello world"
puts str.real_length
puts str.length
