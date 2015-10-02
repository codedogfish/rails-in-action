inc = Proc.new {|x|x+1}
puts inc.call(2)

dec = lambda {|x|x-1}
puts dec.class
puts dec.call(2)
