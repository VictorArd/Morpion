require_relative './lib/game'

class Application
  def perform
    Game.new
    
    if !victory?
      Game.new
      puts "play again"
    else
      puts 'you win'
    end
  end
end