class Phone
    def size
        puts "115.2 * 58.6 * 9.3mm"
    end
    class CPU
        def initialize
            puts "two cores version of Apple A5 CPU"
        end
    end
end
iPhone=Phone.new
iPhone.size
cpu=Phone::CPU.new
