require_relative 'display_impl'

module Bridge
  class StringDisplayImpl < DisplayImpl
    attr_reader :str, :width
    def initialize(str)
      @str = str
      @width = str.bytesize
    end

    def raw_open
      print_line
    end

    def raw_print
      puts "|#{@str}|"
    end

    def raw_close
      print_line
    end

    private

    def print_line
      print '+'
      print "-" * @width
      puts '+'
    end
  end
end
