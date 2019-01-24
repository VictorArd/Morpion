require_relative 'board'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :valeur, :idcase
  @@all_case = []
  
  def initialize(valeur, idcase)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @valeur = valeur
    @idcase = idcase
    @@all_case << self    
  end

end