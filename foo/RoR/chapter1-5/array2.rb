students=["jack","jessie","bottle","eva","max"]
puts "students count: #{students.size}"
puts "#{students}"
puts "#{students.pop}"
puts "#{students}" 
puts "#{students.shift}"
puts "#{students}"

programs=["Golang","Ruby","PHP","Java","C#","C++","VB"]
puts "#{programs}"
puts "programs[2,4]: #{programs[2,4]}"
puts "programs[2..4]: #{programs[2..4]}"
puts "programs[2...4]: #{programs[2...4]}"

colors=["red","black","blue","green","yello"]
puts "concat students and colors: #{colors.concat students}"
puts "concat students and programs: #{students.concat programs}"
