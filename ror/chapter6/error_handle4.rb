def hello name
    puts "hello #{name}"
end
begin
    hello "jack"
    hello "jessie","bottle"
rescue Exception => e
    begin 
        puts "There is some error"
        puts "*"*20
        puts "#{e.backtrace}"
        puts "*"*20
        puts "#{e.to_s}"
        puts "*"*20
        puts "#{e.message}"
    end
end
