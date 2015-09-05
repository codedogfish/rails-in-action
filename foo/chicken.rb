a=1
while a<20 do
    b=1
    while b<33
        c=100-a-b
        if a*5+b*3+c/3==100 && c%3==0 then
            puts "100 dollars can buy "+a.to_s+" male chickens "+b.to_s+" female chickens "+c.to_s+" child chickens "
        end
        b+=1
    end
    a+=1
end
