require_relative 'boardcase'
require_relative 'game'


class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :arrayboardcase

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @A1 = BoardCase.new(' ', 'A1')
    @A2 = BoardCase.new(' ', 'A2')
    @A3 = BoardCase.new(' ', 'A3')
    @B1 = BoardCase.new(' ', 'B1')
    @B2 = BoardCase.new(' ', 'B2')
    @B3 = BoardCase.new(' ', 'B3')
    @C1 = BoardCase.new(' ', 'C1')
    @C2 = BoardCase.new(' ', 'C2')
    @C3 = BoardCase.new(' ', 'C3')
    @arrayboardcase = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    puts "What do you whant to do ? #{@current_player}"
    played_case = gets.chomp

    played_case.each do |f|
      f.find('x'*3)  
      puts "You already got 3 * 'x'"
    end
  
    if f = 
            (A1 + B1 + C1) ||  (A2 + B2 + C2) || (A3 + B3 + C3)
                                  or
            (A1 + A2+ A3) ||  (B1 + B2 + B3) || (C1 + C2 + C3)
                                  or
                  (A1 + B2 + C3) ||  (C1 + B2 + A3)
      puts "You have won !"

    else
      puts "play again"
    end

  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

    if @@all_case !nil 
      puts "Game over, Lets check the result of the game" 
    end

  end

end