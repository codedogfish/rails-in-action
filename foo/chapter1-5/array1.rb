colors1=["red","black","white","blue","yellow"]
colors2=Array.new
colors2[0]="red"
colors2[1]="black"
colors2[2]="white"
colors2[3]="blue"
colors2[4]="yellow"
puts "colors1's length: #{colors1.size}"
colors1[5]="green"
puts "colors1's length: #{colors1.size}"
colors1[7]="purple"
puts "colors1's length: #{colors1.size}"
colors1.each do |color|
    print color
end
puts ""
puts "all the colors1: #{colors1}"
puts "last of colors1 is #{colors1[-1]}"
newbook="newbook"
booklist=%W{book1 book2 book3 #{newbook}}
puts "all the books: #{booklist}"
booklist1=%w{book1 book2 book3 #{newbook}}
puts "all the books: #{booklist1}"

programs=["Golang","Ruby","C#"]
puts "#{programs}"
programs.unshift "Java","Javascript"
puts "#{programs}"
programs.push "VB","PHP"
puts "#{programs}"
programs<<"C++"
puts "#{programs}"


