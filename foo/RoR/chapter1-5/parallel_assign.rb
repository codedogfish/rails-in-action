a=[1,2,3,4,5]
b,(c,d),e=a
puts 'b'
puts b.to_s
puts 'c'
puts c.to_s
puts 'd'
puts d.to_s
puts 'e'
puts e.to_s
b,(c,d),e=1,[2,3,4],5
puts 'b'
puts b.to_s
puts 'c'
puts c.to_s
puts 'd'
puts d.to_s
puts 'e'
puts e.to_s
b,(c,*d),e=1,[2,3,4],5
puts 'd'
puts b.to_s
puts 'c'
puts c.to_s
puts 'd'
puts d.to_s
puts 'e'
puts e.to_s
