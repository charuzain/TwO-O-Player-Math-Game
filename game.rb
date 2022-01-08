require './player.rb'

class Game

def initialize 
  @player1 = Player.new("player1")
  @player2 = Player.new("player2")
end

def play
  puts "let's start the game !"
  puts @player1.inspect
  puts @player2.inspect

  num1 = rand(20)+1
  puts num1
  num2 = rand(20)+1
  puts num2
  sum = num1 + num2
  puts "#{@player1.name}: What does #{num1} plus #{num2} equal ?"
  response = gets.chomp
  if response != sum 
    puts "#{@player1.name}: Seriously? No !"
    @player1.lives = @player1.lives-1
    puts "P1 : #{@player1.lives}/3"
  end

  end
end


game1 = Game.new
game1.play