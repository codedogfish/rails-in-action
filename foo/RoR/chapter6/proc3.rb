p = proc do |value|
    puts "It is from proc's block param, get arguments: #{value}"
end
p.call "Ruby"
def info
    yield "this is a param to the block"
end
info &p
