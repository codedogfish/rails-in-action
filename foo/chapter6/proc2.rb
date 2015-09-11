def hello &returnstring
    stu=returnstring
end
stu=hello{puts "It is from a proc object"}
stu.call
