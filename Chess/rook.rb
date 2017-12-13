class Rook
  def initialize(type = "\u{2656}", color)
    @move_direction = ['vertical', 'horizontal']
    super type, color
  end
end
