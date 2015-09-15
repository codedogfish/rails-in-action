module MusicModule
    def goto
        puts "It's jumping..."
    end
    def self.play
        puts "Play the list of music"
    end
end
MusicModule.play

class Music
    include MusicModule
end
m = Music.new
m.goto
MusicModule.play
