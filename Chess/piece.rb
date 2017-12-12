  class Piece

    def initialize(type = "0", color = "0")
      @color = color
      @type = type
    end

    def display
      type
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

    attr_reader :color, :type


  end
