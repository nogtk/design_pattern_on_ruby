require_relative 'border'

module Decorator
  class SideBorder < Border
    attr_accessor :border_cher

    def initialize(display, border_cher)
      super(display)
      @border_cher = border_cher
    end

    def columns
      1 + @display.columns + 1
    end

    def rows
      @display.rows
    end

    def row_text(row)
      @border_cher + @display.row_text(row) + @border_cher
    end
  end
end
