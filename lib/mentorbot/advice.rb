class Advice
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def say
        puts "#{text}"
    end
end