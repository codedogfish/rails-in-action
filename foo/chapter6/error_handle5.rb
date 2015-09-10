begin
    puts 20/0
rescue
    puts "Exception: #{$!.to_s}"
    puts "Place: #{$@.to_s}"
end
