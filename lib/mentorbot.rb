#!/usr/bin/env ruby
class Mentorbot
    require 'mentorbot/question'
    require 'mentorbot/advice'

    attr_reader :questions_list, :advice_list

    def initialize
        @questions_list = create_questions
        @advice_list = create_advice
    end

    def create_questions
        q1 = Question.new("What problem are you trying to solve?")
        q2 = Question.new("Have you read the error message carefully?")
        q3 = Question.new("How does this work?")
        q4 = Question.new("What does this do?")
        [q1, q2, q3, q4]
    end

    def create_advice
        a1 = Advice.new("Explain to a rubber duck WHY you wrote each line of your program")
        a2 = Advice.new("Write a technical spec for each method")
        a3 = Advice.new("Check that your spec contains preconditions and postconditions")
        a4 = Advice.new("Write down what each line of your program should do. Now step through the code with a debugger and verify it does that thing")
        a5 = Advice.new("Write assertions that verify your preconditions and postconditions")
        a6 = Advice.new("Write tests (or at least test *cases*) for your code")
        [a1, a2, a3, a4, a5, a6]
    end

    def ask_question(q)
        q.ask
    end

    def pose_advice(a)
        a.say
    end
end

m = Mentorbot.new
m.ask_question(m.questions_list[0])