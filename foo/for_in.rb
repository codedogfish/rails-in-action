cities=["Beijing","Shanghai","Tianjing","Chongqing"]
for city in cities do
    puts city
end
student={:name=>"jack",:age=>26,:sex=>"male"}
for item in student do
    puts item[0].to_s + "=>" + item[1].to_s
end
student1={"name"=>"jessie","age"=>25,"sex"=>"female"}
for key,value in student1 do
    puts key.to_s + "=>" + value.to_s
end
