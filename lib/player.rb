require_relative 'game'


class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :valeur

  def initialize
    #TO DO : doit régler son nom et sa valeur
    player1 = 'x'
    player2 = 'o'
  end
end