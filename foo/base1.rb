
def info
    str = "It is from method-in"
    puts str
end

module Message
    str = "It is from module-in"
    puts str
end

class Test
    str = "It is from class-in"
    puts str
end

puts str    #不能访问以上局部变量
