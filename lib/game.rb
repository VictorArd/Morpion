require_relative 'player'
require_relative 'boardcase'
require 'pry'
require 'rb-readline'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :arrayplayer
  @@arrayplayer = []

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    puts "First player name: "
    player1 = gets.chomp
    puts "Second player name: "
    player2 = gets.chomp

    tableau = Show.new.board_tables
 
    @arrayplayer = [player1, player2]
    @@arrayplayer << @arrayplayer
    return @@arrayplayer


    @status = "on going" || nil || @win

    @current_player.each do |x|
      if @current_player = player1
        puts "#{player1}, it's your turn"
      else
        puts "#{player2}, it's your turn"
      end
    end
  end 

  binding.pry
  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    table = Show.new.board_table
    update = Board.new.play_turn
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    Game.new
    @player1 = @@arrayplayer[0]
    @player2 = @@arrayplayer[1]
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if victory? 
      puts 'Vous avez gagné, fin de jeu'
    elsif draw
      puts 'Match nul, fin de jeu'
    end
  end    
end