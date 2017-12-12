require_relative 'piece.rb'

class Pawn < Piece
  def initialize(type, color)
    @moves = ["vertical","diagonal"]
    super type, color
  end
end
