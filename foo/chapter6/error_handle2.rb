def hello
    puts "hello method"
end
begin
    puts "division"
    result = 15/0
    rescue
        puts "error"
    ensure
        puts "end"
end
puts "*"*20
begin
    puts "invoke a method"
    hello "jackyu"
rescue
    puts "invoke hello error"
ensure
    puts "invoke end"
end
