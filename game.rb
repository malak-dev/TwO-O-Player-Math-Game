require_relative './player'
class Game

  def initialize
    @player1 = Player.new 'player1'
    @player2 = Player.new 'player2'
    @players = [@player1, @player2]
  
  end

  def track_game_status
    
    @players.each {|player|
    value1 = rand(1..20)
    value2 = rand(1..20)  
    puts "#{player.name} what does #{value1} plus #{value2} equal?" 
  
    result = gets.chomp.to_i 
    values = value1 + value2
    if result == values
      puts "#{player.name} Yes, you are correct"      
    else 
    puts "#{player.name} seriously? No"
     player.lives(-1)
   
    end
    display_game_status
  }

  end 
  def display_game_status
    puts " p1: #{@player1.get}/3 vs p2 #{@player2.get}/3" 
    puts "------ NEW TURN -------"      
   end

    def game_over?
       @players.select{|player| player.dead?}.count > 0
      
  
    end

    def run
    until (game_over?) do
      track_game_status
    end 
    puts "player1 wins with a score of #{@player1.get}/3"
    puts "------GAME OVER--------"
    puts "Good bye"
 end
end 