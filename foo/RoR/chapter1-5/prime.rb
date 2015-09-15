Primes=[2,3]
i=4
top=gets.to_i
def isPrime? (num)
    Primes.each do |prime|
        if num%prime == 0 then
            return false
        end
    end
    return true
end
while i<top do
    if isPrime? i then
        Primes.push i
        puts i
    end
    i+=1
end
puts "Thers are #{Primes.length} primes under #{top}"
