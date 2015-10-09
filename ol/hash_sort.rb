my_hash = {
    bottle:{
        math: 75,
        english: 65
    },
    jessie:{
        math: 85,
        english: 75
    },
    eva:{
        math: 80,
        english: 65
    },
    max:{
        math: 80,
        english: 90
    }
}

# block return 1,0,-1 to sort the hash
# tmp1 will be an array like:
# [bottle,{:math=>75, :english=>65},eva,{:math=>80, :english=>65},max,{:math=>80, :english=>90},jessie,{:math=>85, :english=>75}]
tmp1 = my_hash.sort do |a,b|
    puts a[1].inspect
    puts b[1].inspect
    a[1][:math] <=> b[1][:math]
end

puts tmp1
puts Hash[tmp1]

tmp2 = my_hash.sort do |a,b|
    a[1][:english] <=> b[1][:english]
end

puts Hash[tmp2]
