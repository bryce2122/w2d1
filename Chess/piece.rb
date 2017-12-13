  class Piece
    attr_reader :moves, :color, :type, :square_color
    attr_accessor :current_pos

    def initialize(type = "e", color = "0")
      @color = color
      @type = type
      @square_color
      @types_of_moves = ["horizontal"]
      @moves = []

    end

    def display
      type
    end

    def set_square_color(color)
      @square_color = color
    end

    def horizontal(start, finish)
      start_row, start_column = start
      finish_row, finish_column = finish
      return false if start_row != finish_row
      return true
    end



    def diagonal(start, finish)
      if (finish_row - start_row).abs !=
      (finish_column - start_column).abs
        false
      else
        true
      end


    end

    def vertical(start,finish)
      start_row, start_column = start
      finish_row, finish_column = finish
      return false if start_column != finish_column
      return true
    end


  end
