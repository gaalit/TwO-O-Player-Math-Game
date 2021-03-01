
require "./game.rb"
require "./player"
class Mathq

  attr_accessor :solution, :question

    def generate_question
      @num_1 = rand(1..20)
      @num_2 = rand(1..20)
      @question= "What does #{@num_1} + #{@num_2} equal?"
      @solution = @num_1 + @num_2
    end

    def show_question(name)
      generate_question
      puts "#{name}:  #{question}"
    end

    def correct_answer?(answer)
      if answer == @solution
        puts "YES! You are correct"
        return true
        else puts "Seriously? No!"
        return false
      end
    end

  end
  # 2. Class MathQ
  #  State: Storing different Math questions & Storing answers for questions

  #  Behavior:

  #  1. set_math_question ==> generates random question and displays it
  #  2. validate_answer ==> validate answer received against actual answer and send either true or false to messagePrompt class

  #  - to_Initialize:
  #  - What public methods will be defined on them?
  #    1. validate_answer: true or false

# newq = Mathq.new("player1")
# puts newq.show_question