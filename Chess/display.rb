require_relative 'board'
require 'colorize'
require_relative 'cursor.rb'
class Display
  attr_reader :cursor_pos
  def initialize

    @cursor_pos = Cursor.new([6,0], Board.new)

  end


  def render

    @cursor_pos.board.render

  end

  def loop
    # 5.times do
      render
      @cursor_pos.get_input
      render
    # end
  end
end



# Display.new.loop
# arr = ['hello', 2, 3, 4, 5]
# arr[0].red
# puts 'hello'.red
#
display = Display.new
# display.cursor_pos.board.board[6][0].type.red
display.loop
puts "\u{265C} ".colorize(background: :yellow)
