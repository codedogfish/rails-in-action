j=15*20
begin
    puts "15*20=#{j}"
    rescue
        puts "error: #{$!.to_s}"
    else
        puts "ok"
end
