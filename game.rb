require './player.rb'
require './question.rb'


class Game

def initialize 
  @player1 = Player.new("player1")
  @player2 = Player.new("player2")
  @players =[@player1 ,@player2].shuffle
end

def initial_display
    puts "-------------------NEW GAME-------------------"
  puts "Welcome #{@player1.name} and #{@player2.name}"
  puts "Let's start the game !!!!"
  puts "------------------------------------------------"

end

def game_over?
  @player1.lives <= 0 || @player2.lives <= 0
  
end

def display_score
            puts " P1 : #{@player1.lives}/3  vs P2: #{@player2.lives}/3 "

end


def play
  initial_display
      until(game_over?) do
        @players.rotate!
        current_player = @players.first
        question_answer = Question.qus_ans
        question = question_answer[0]
        answer =  question_answer[1]

        puts "#{current_player.name}: #{question}"
        player_response = gets.chomp.to_i
        if player_response !=  answer
          puts "#{current_player.name}:Seriously? No! Thats a wrong answer❌❌❌❌❌"
          current_player.lives -= 1
          display_score
        else 
            puts "#{current_player.name}: YES! You are correct!✅✅✅✅✅✅✅✅✅✅"
            display_score

        end
      if current_player.lives == 0 
        puts "---------------------------------"

        puts "Game over"
        puts "#{@players.last.name} won with #{@players.last.lives}/3 score "

        puts "---------------------------------"

      else
        puts "---------------------------------"
        puts "      NEW TURN                   "
        puts "---------------------------------"
      end
    end
  end
end


