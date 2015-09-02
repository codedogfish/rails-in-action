student={
    "name"=>"jack",
    "age"=>"26",
    "sex"=>"man"
}
student1=Hash.new
student1 ["name"]="jessie"
student1 ["age"]="21"
student1 ["sex"]="woman"
puts student.size
puts student1
puts student["name"]
puts student1["name"]
p student.keys
p student.values
p student.include?"sex"
student.delete "sex"
p student.has_key?"sex"
p student.length

student1.each do |key,value|
    puts "key=>#{key},value=>#{value}"
end
student1.each_pair do |key,value|
    puts "key=>#{key},value=>#{value}"
end


student1.each do |element|
    puts "element=>#{element}"
end
