require_relative 'board'
require 'colorize'
require_relative 'cursor.rb'
require 'byebug'
class Display
  attr_reader :cursor_pos
  def initialize

    @cursor = Cursor.new([6,0], Board.new)

    @previous_square = @cursor.board.grid[6][0]
    @previous_square.set_square_color(:red)

  end


  def render

    @cursor.board.render

  end

  def revert_to_old_color
    @previous_square.set_square_color(:grey)
  end

  def current_square(cursor_pos)
    row, col = cursor_pos
    @cursor.board.grid[row][col]
  end

  def swap_pieces(start_pos,piece)

      end_pos = piece.current_pos
      p end_pos
      start_row,start_col = start_pos
      end_row, end_col = end_pos
      puts "MOVE IS TRUE"
      piece_postion = @cursor.board.grid[start_row][start_col]
      empty_position = @cursor.board.grid[end_row][end_col]
      @cursor.board.grid[start_row][start_col] = empty_position
      @cursor.board.grid[end_row][end_col] = piece_postion
      @cursor.move = false
      piece_postion.current_pos = end_pos
      empty_position.current_pos = start_pos



  end
  def square_selected?(piece)

    if @cursor.selected
      piece.set_square_color(:blue)
      true
    else
      piece.set_square_color(:red)
      false
    end
  end



  def loop
    start_pos = nil
    until false

      render

      @cursor.get_input

      piece = current_square(@cursor.cursor_pos)

      start_pos = piece.current_pos if square_selected?(piece)

      swap_pieces(start_pos,piece) if @cursor.move && start_pos




      if piece.square_color != :blue
        revert_to_old_color
        @previous_square = piece
      end





    end
    # end
  end
end



# Display.new.loop
# arr = ['hello', 2, 3, 4, 5]
# arr[0].red
# puts 'hello'.red
#
# display = Display.new
# # display.cursor_pos.board.board[6][0].type.red
# display.loop
# Display.new.render
Display.new.loop
