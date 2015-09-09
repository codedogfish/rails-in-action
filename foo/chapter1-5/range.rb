level1=0..59
level2=60..79
level3=80..99
level4=100
score=82
puts "几个范围的最小值#{level2.min}"
puts "得分大于#{level3.first} 的为良好"
puts "良好的最大分#{level3.end}"
if level1 === score then
    puts "不及格"
elsif level2.include?score
    puts "及格"
elsif level3===score
    puts "良好"
elsif level4===score
    puts "优秀"
end

a=10..20
puts a.reject{|i|i<15}
puts "\n"
puts a.select{|i|i<15}
puts "\n"
a.each do |i|
    puts "当前元素为#{i}"
end
