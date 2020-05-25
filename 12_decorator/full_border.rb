require_relative 'border'

module Decorator
  class FullBorder < Border
    def initialize(display)
      super
    end

    def columns
      1  + @display.columns + 1
    end

    def rows
      1 + @display.rows + 1
    end

    def row_text(row)
      case row
      when 0
        "+#{make_line('-', @display.columns)}+"
      when @display.rows + 1
        "+#{make_line('-', @display.columns)}+"
      else
        "|#{@display.row_text(row-1)}|"
      end
    end

    private

    def make_line(char, size)
      "#{char*size}"
    end
  end
end
