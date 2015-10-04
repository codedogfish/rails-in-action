class Paragraph
    def initialize(text)
        @text = text
    end

    def title?
        @text.upcase == @text
    end

    def reverse
        @text.reverss
    end

    def upcase
        @text.upcase
    end
end

paragraph = Paragraph.new("paragraph")
puts paragraph.title?

paragraph1 = "paragraph"
def paragraph.title?
    self.upcase == self
end


