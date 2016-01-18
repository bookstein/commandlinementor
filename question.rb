class Question
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def ask
        puts "#{text}"
        save_answer
    end

    private def save_answer
        ans = gets.chomp
        puts "answer saved \n"
    end
end