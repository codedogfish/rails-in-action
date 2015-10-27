# KP
# 1.Enumerable 中的方法都依赖于 each
# 即通过 include Enumerable 来 mixin Enumerable
# 但是想要使用 Enumerble 的方法，对象必须实现 each 方案
# 2.Enumeralbe 的局限性
# 为了在枚举循环过程中获得索引，Enumberable 提供了 each_with_index
# 但是想要试用 zip 等 Enumerable 提供的其他方法也试用索引就存在局限性
# 因为不可能为每一个方法定一个 with_index 的版本
# 因此引入 Enumerator 类，例如 map 返会 enumrator，因此可以 map.with_index
class Famliy

    def initialize members
        @members = members
    end

    def each
        p @members.length
        @members.each {|member|yield member}
    end
end

class MyFamliy < Famliy
    include Enumerable
end

my_famliy = Famliy.new ["mom","dad","me"]
#my_famliy.members.concat ["mon","dad","me"]
my_famliy.each {|member|p member}
#my_famliy.each_with_index {|m,i| p "#{m},#{i}"}
my_famliy1 = MyFamliy.new ["mom","dad","me"]
my_famliy1.each_with_index {|m,i| p "#{m},#{i}"}
p my_famliy1.map {|m| m+" love this famliy"}
p my_famliy1.map.with_index { |m,i|
    "#{i}.#{m}"
}

str = "Hello"
enumerator = str.enum_for(:each_byte)
p enumerator.next
p enumerator.next

