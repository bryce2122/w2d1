require 'colorize'

WHITE_PIECES = {[0,0] => "\u{2656} ".colorize(background: :brown), [0, 1] => "\u{2658} ".colorize(background: :brown), [0, 2] => "\u{2657}",
  [0, 3] => "\u{2654} ".colorize(background: :brown), [0, 4] => "\u{2655}".colorize(background: :brown), [0, 5] => "\u{2657}".colorize(background: :brown),
  [0, 6] => "\u{2658} ".colorize(background: :brown), [0, 7] => "\u{2656} ", [1,0] => "\u{2659} ".colorize(background: :brown),
  [1, 1] => "\u{2659} ".colorize(background: :brown), [1, 2] => "\u{2659} ".colorize(background: :brown),
    [1, 3] => "\u{2659} ".colorize(background: :brown), [1, 4] => "\u{2659} ".colorize(background: :brown), [1, 5] => "\u{2659}".colorize(background: :brown),
    [1, 6] => "\u{2659} ".colorize(background: :brown), [1, 7] => "\u{2659} ".colorize(background: :brown)}

BLACK_PIECES = {[7,0] => "\u{265C} ".colorize(background: :brown), [7, 1] => "\u{265E} ".colorize(background: :brown), [7, 2] => "\u{265D}".colorize(background: :brown),
  [7, 3] => "\u{265A} ".colorize(background: :brown), [7, 4] => "\u{265B} ".colorize(background: :brown), [7, 5] => "\u{265D}".colorize(background: :brown),
  [7, 6] => "\u{265E} ".colorize(background: :brown), [7, 7] => "\u{265C} ".colorize(background: :brown), [6,0] => "\u{265F}".colorize(background: :brown),
  [6, 1] => "\u{265D} ".colorize(background: :brown), [6, 2] => "\u{265F} ".colorize(background: :brown),
    [6, 3] => "\u{265F} ".colorize(background: :brown), [6, 4] => "\u{265F} ".colorize(background: :brown), [6, 5] => "\u{265F}".colorize(background: :brown),
    [6, 6] => "\u{265F} ".colorize(background: :brown), [6, 7] => "\u{265F} ".colorize(background: :brown)}
