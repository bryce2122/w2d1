require_relative 'piece.rb'

class Pawn < Piece
  attr_reader :moves
  def initialize(type, color)
    @move_direction = ["vertical","diagonal"]
    super type, color
  end
end
