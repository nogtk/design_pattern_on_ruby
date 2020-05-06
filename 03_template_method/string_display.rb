require_relative 'abstract_display'

module TemplateMethod
  class StringDisplay < AbstractDisplay
    attr_reader :str

    def initialize(str)
      @str = str
    end

    def open
      puts print_line
    end

    def _print
      puts "|#{@str}|"
    end

    def close
      puts print_line
    end

    private

    def print_line
      '+' + '-'*@str.bytesize + '+'
    end
  end
end
