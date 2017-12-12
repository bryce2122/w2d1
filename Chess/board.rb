require_relative "piece.rb"
require_relative 'starting_pieces'
class Board


  def self.create_default_board
    grid = Array.new(8) { Array.new(8) }
    (0..7).each do |row|
      (0..7).each do |col|
        if BLACK_PIECES.key?([row, col])
          grid[row][col] = Piece.new(BLACK_PIECES[[row, col]], "black")
        elsif WHITE_PIECES.key?([row, col])
          grid[row][col] = Piece.new(WHITE_PIECES[[row, col]], "white")
        else
          grid[row][col] = Piece.new
        end
      end
    end
    grid

  end


  def initialize(board = Board.create_default_board)
    @board = board
  end

  def render
    (0..7).each do |row|
      p @board[row].map {|piece| piece.display}
    end
  end

  def move_piece(start_pos, end_pos)
    row, col = pos

  end

  def is_start_position_valid?(start_pos)
    row, col = start_pos
    raise Exception.new if !row.between?(0, 7) || !col.between?(0, 7)
    raise Exception.new if grid[row][col].nil?
  end

  def is_end_pos_valid?(end_pos)
    raise Exception.new if !row.between?(0, 7) || !col.between?(0, 7)
    raise Exception.new if grid[row][col].nil?
  end
end

Board.new.render
