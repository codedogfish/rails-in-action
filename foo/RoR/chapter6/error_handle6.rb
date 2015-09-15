def hello
    raise ArgumentError, "raise when invoke hello method"
end
#hello
begin
    hello
rescue ArgumentError
    puts "catch a error from hello"
end
