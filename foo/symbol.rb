a=10
b=:a
a="ruby"
c=:a
puts b
puts b==c
puts b==:"a"
def show
    puts "hello world"
end
d=:show
puts d
puts d==:show

book="Ruby"
bs=:book
puts book.to_sym==bs
puts bs.to_s==book
puts book.to_sym
puts bs
puts bs.to_s
puts book

book1="Ruby1"
bs1=:"Ruby1"
puts book1.to_sym==bs1
puts bs1.to_s==book1
puts book1.to_sym
puts bs1
puts bs1.to_s
puts book1

book="Ruby"
a=:book
b=%s(book)
puts a==b
