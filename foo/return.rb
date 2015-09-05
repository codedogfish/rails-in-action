def search(name)
    cities=["Beijing","Xian","Luoyang","Nanjing","Kaifen","Zhengzhou","Hangzhou","Anyang"]
    for city in cities do
        puts city
        if city==name then
            return true
        end
    end
    return false
end

if search("Shanghai") then
    puts "It is ancient city"
else
    puts "It is not ancient city"
end

if search("Xian") then
    puts "It is ancient city"
else
    puts "It is not ancient city"
end
    
