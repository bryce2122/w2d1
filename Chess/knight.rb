class Knight < Piece
  def initialize(type, color)
    @moves = ["l_move"]
    @possible_moves = [[1, 2],[2, 1]]
    super type, color
  end
    def l_move(start, finish)
      start_row, start_column = start
      finish_row, finish_column = finish
      POSSIBLE_MOVES.each do |move|
        if (start_row - finish_row).abs == move.first &&
        (start_column - finish_column) == move.last
          return true
        end
      end
      false
    end

end
