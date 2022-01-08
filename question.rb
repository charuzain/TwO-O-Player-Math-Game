
class Question
  
def self.qus_ans
  question_answer = []
        @num1 = rand(20)+1
        @num2 = rand(20)+1
        @sum = @num1 + @num2

        question_answer[0] = "What does #{@num1} plus #{@num2} equal ?"
        question_answer[1] = @sum
        question_answer
       
end
end