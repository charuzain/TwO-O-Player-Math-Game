require './player.rb'

class Game

def initialize 
  @player1 = Player.new("player1")
  @player2 = Player.new("player2")
  @players =[@player1 ,@player2].shuffle
end

def game_over?
  @player1.lives <= 0 || @player2.lives <= 0
end


def play
  puts "let's start the game !"
  puts @player1.inspect
  puts @player2.inspect

      until(game_over?) do
        @players.rotate!
        current_player = @players.first
        num1 = rand(20)+1
        num2 = rand(20)+1
        sum = num1 + num2
        puts "#{current_player.name}: What does #{num1} plus #{num2} equal ?"
        response = gets.chomp.to_i
        if response != sum 
          puts "#{current_player.name}: Seriously? No !"
          current_player.lives = current_player.lives-1
          puts "P1 : #{@player1.lives}/3  vs P2: #{@player2.lives}/3 "
        end
    end
  end
end


game1 = Game.new
game1.play