require_relative 'abstract_display'

module TemplateMethod
  class CharDisplay < TemplateMethod::AbstractDisplay
    attr_reader :ch

    def initialize(ch)
      @ch = ch
    end

    def open
      print '<<'
    end

    def _print
      print ch
    end

    def close
      puts '>>'
    end
  end
end
