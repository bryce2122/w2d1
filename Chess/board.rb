require_relative "piece.rb"
require_relative 'starting_pieces'
require 'colorize'
class Board
  attr_reader :grid

  def self.create_default_board
    grid = Array.new(8) { Array.new(8) }
    (0..7).each do |row|
      (0..7).each do |col|
        if BLACK_PIECES.key?([row, col])
          current_piece =  Object.const_get(BLACK_PIECES[[row, col]]).new("black")
          current_piece.current_pos = [row, col]
          grid[row][col] = current_piece
        elsif WHITE_PIECES.key?([row, col])
          current_piece =  Object.const_get(BLACK_PIECES[[row, col]]).new("white")
          current_piece.current_pos = [row, col]
          grid[row][col] = current_piece
        else
          empty_piece = Piece.new
          empty_piece.current_pos = [row, col]
          grid[row][col] = empty_piece
        end
      end
    end
    grid

  end


  def initialize(grid= Board.create_default_board)
    @grid = grid
  end




  def render
    (0..7).each do |row|
      (0..7).each do |col|
        piece = @grid[row][col]
        if col.even? && row.even? || col.odd? && row.odd?

          piece.set_square_color(:yellow) unless
          piece.square_color == :red || piece.square_color == :blue
        else
          piece.set_square_color(:green) unless
          piece.square_color == :red || piece.square_color == :blue
        end
        display_piece = @grid[row][col].display

        string = " #{display_piece} "
        # puts "PIECE"
        # puts string
        # puts "LENGTH"
        # puts string.length
        length = string.length



        string = string + ("" * (18 - string.length) )
        # string += " " if piece == "e"

        print string.colorize(background: piece.square_color)


      end
      print "\n"

    end
  end

  def move_piece(start_pos, end_pos)
    row, col = pos
    @grid[row][col]

  end

  # def [](pos)
  #   row,column = pos
  #   @board[row][col]
  # end

  def is_start_position_valid?(start_pos)
    row, col = start_pos
    raise Exception.new if !row.between?(0, 7) || !col.between?(0, 7)
    raise Exception.new if @grid[row][col].nil?
  end

  def is_end_pos_valid?(start_pos,end_pos)
    row, col = end_pos
    start_row, start_col = start_pos
    raise Exception.new if !row.between?(0, 7) || !col.between?(0, 7)
    # raise Exception.new if !@board[row][col].nil?

     piece = @grid[start_row][start_col]
    a = piece.moves.any? do |move|
      piece.send(move,start_pos,end_pos)
    end
  p a
  end
end



# board.is_end_pos_valid?([1,0],[2,0])
