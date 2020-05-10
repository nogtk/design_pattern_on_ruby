require_relative 'builder'

module Builder
  class TextBuilder < ::Builder::Builder
    attr_accessor :buffer

    def initialize
      @buffer = ''
    end

    def make_title(title)
      @buffer += "==============================\n"
      @buffer += " [ #{title} ] \n"
      @buffer += "\n"
    end

    def make_string(str)
      @buffer += "■ #{str}\n"
    end

    def make_items(items)
      items.each do |item|
        @buffer += " ・#{item}\n"
      end
      @buffer += "\n"
    end

    def close
      @buffer += "==============================\n"
    end

    def result
      @buffer
    end
  end
end
