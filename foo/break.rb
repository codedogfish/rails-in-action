users=["admin","someboy","jack","jessie"]
puts "current administrator: "
for user in users do
    break if user=="jack"
    puts user
end
puts "end"

i=1
while i<=3 do
    puts "outside #{i} times"
    i+=1
    j=1
    while j<=3 do
        puts "inside #{j} times"
        j+=1
        if j>=1 then
            break
        end
    end
end

menus=["home","teacher","book","personal","forum","blog"]
puts "menus start"
for menu in menus do
    next if menu=="personal"
    puts menu
end
puts "menus end"

i=1
while i<=3 do
    if i==3 then
        i+=2
        redo
    end
    puts "#{i} times"
    i+=1
end
