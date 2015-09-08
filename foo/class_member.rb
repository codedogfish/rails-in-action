@game = "Angar Bird"
def version
    @v="zh-CN 1.2 space"
end
version
puts "game: #{@game}, version: #{@v}"
def getGameInfo
    puts "game: #{@game}, version: #{@v}"
end
getGameInfo

class Car
    def go
        puts "Car is running"
        @speec = 120
    end
    def Acceleration
        puts "Speed: #{@speec}km/h"
    end
end
car = Car.new
car.go
car.Acceleration
