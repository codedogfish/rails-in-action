bookname="Ruby on Rails"
bookprice=65.8
bookpublisher="QHDX"
book=<<ruby
Book Info:
Name: #{bookname}
Price: #{bookprice}
Publisher: #{bookpublisher}
ruby
puts book

str1="Hi"
str2=str1
puts "#{str2} Ruby"
str1.replace("Hello")
puts "#{str2} Ruby"

str="whimtech.cn"
puts str.dup
puts str.clone

name="Jack"
school="Ningbo University"
address="Shanghai"
str3=name+" graduate from "+school
puts str3
more=name+" live in "+address
puts more
puts "China "+address

who="I"
how="Love"
what="Jessie"
who<<" "+how
puts who
who<<" "+what
puts who
who<<"\n"
puts who*3

str5="JackYu"
puts str5
puts str5[3]
puts str5[-3]
puts str5[3,2]
puts str5[-1]
puts str5[3,3]

hello="Hello"
puts hello
hello[1]="a"
puts hello
hello[1,4]="i"
puts hello
hello[1]="ello"
puts hello

jessie="Jessie's origin name is Lin"
jessie[6]="Yu'"
puts jessie
