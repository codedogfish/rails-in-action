@@bookname="Ruby on Rails in Action"
def setPrice
    @@price=35
end
setPrice
puts "bookname: #{@@bookname} ,price: #{@@price}"
def buy
    puts "bookname: #{@@bookname} ,price: #{@@price}"
end
buy
class Book
    @@p="QHDX Publisher"
    def getinfo
        puts "#{@@bookname} by #{@@p}"
    end
end
b=Book.new
b.getinfo
    
