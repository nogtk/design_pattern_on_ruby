require_relative 'display'

module Decorator
  class StringDisplay < Display
    attr_accessor :string
    def initialize(string)
      @string = string
    end

    def columns
      @string.bytesize
    end

    def rows
      1
    end

    def row_text(row)
      @string if row.zero?
    end
  end
end
